package main // import "makefile-gen"

import (
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
)

func isInSlice(s string, ss []string) bool {
	result := false

	for _, v := range ss {
		if s == v {
			result = true
			break
		}
	}

	return result
}

func main() {
	var files []string
	var infos []os.FileInfo
	// var currentPath string

	dev1 := []string{"devsup", "disto", "asrc", "cap", "cccs", "ccvs", "ind", "isrc", "res", "vccs", "vcvs", "vsrc"}
	dev2 := []string{"bjt", "dio", "mos1", "mos2", "mos3", "mos6"}
	dev3 := []string{"bsim1", "bsim2", "csw", "jfet", "ltra", "mes", "sw", "tra", "urc"}
	// libs := []string{"ckt", "cp", "fte", "hlp", "inp", "mfb", "mfbpc", "misc", "ni", "smp", "sparse"}
	libs := []string{"ckt", "cp", "fte", "hlp", "inp", "misc", "ni", "sparse"}

	root := "./"
	err := filepath.Walk(root, func(path string, info os.FileInfo, err error) error {
		infos = append(infos, info)
		files = append(files, path)
		return nil
	})
	if err != nil {
		panic(err)
	}

	ccDev1 := ""
	arCmd1 := "\tar rcs lib/libdev1.a"
	arDev1 := ""
	ccDev2 := ""
	arDev2 := "\tar rcs lib/libdev2.a"
	ccDev3 := ""
	arDev3 := "\tar rcs lib/libdev3.a"
	ccLibs := make(map[string]string)
	arLibs := make(map[string]string)
	bins := ""
	wtf := ""

	for k, file := range files {
		file := strings.Replace(file, "\\", "/", -1)
		if strings.LastIndex(file, ".c") > -1 && strings.LastIndex(file, ".cur") < 0 {
			fileName := infos[k].Name()
			fileName = fileName[:len(fileName)-2]
			fpaths := strings.Split(file, "/")
			if len(fpaths) < 2 {
				continue
			}
			pname := fpaths[len(fpaths)-2]

			switch {
			case strings.Contains(file, "/dev/"):
				if isInSlice(pname, dev1) {
					fnames := strings.Split(file, ".")
					fname := fnames[0]
					ccDev1 += "\tgcc -w -Iinclude -Ilib/dev -o " + fname + ".o -c " + file + "\n"
					arDev1 += " " + fname + ".o"
				} else if isInSlice(pname, dev2) {
					fnames := strings.Split(file, ".")
					fname := fnames[0]
					ccDev2 += "\tgcc -w -Iinclude -Ilib/dev -o " + fname + ".o -c " + file + "\n"
					arDev2 += " " + fname + ".o"
				} else if isInSlice(pname, dev3) {
					fnames := strings.Split(file, ".")
					fname := fnames[0]
					ccDev3 += "\tgcc -w -Iinclude -Ilib/dev -o " + fname + ".o -c " + file + "\n"
					arDev3 += " " + fname + ".o"
				} else {
					if fpaths[len(fpaths)-1] == "devsup.c" {
						fnames := strings.Split(file, ".")
						fname := fnames[0]
						ccDev1 = "\tgcc -w -Iinclude -Ilib/dev -o " + fname + ".o -c " + file + "\n" + ccDev1
						arDev1 = " " + fname + ".o" + arDev1
					} else {
						wtf += file + "\n"
					}
				}
				break
			case strings.Contains(file, "lib/"):
				if isInSlice(pname, libs) {
					fnames := strings.Split(file, ".")
					fname := fnames[0]
					keys := strings.Split(file, "/")
					key := keys[1]
					if _, ok := ccLibs[key]; !ok {
						arLibs[key] = "\tar rcs lib/lib" + key + ".a"
					}
					opts := ""
					if isInSlice(key, libs) {
						// mfb, pwd.h
						opts = "-DHAS_STAT"
					}

					ccLibs[key] += "\tgcc -w -Iinclude -Ilib/dev " + opts + " -o " + fname + ".o -c " + file + "\n"
					arLibs[key] += " " + fname + ".o"
				}
			default:
				break
			}
		}
	}

	bins += "bins:\n"
	bins += "\tgcc -w -Iinclude -Ilib/dev -o bin/bconf.o -c bin/bconf.c\n"
	bins += "\tgcc -w -Iinclude -Ilib/dev -o bin/cconf.o -c bin/cconf.c\n"
	bins += "\tgcc -w -Iinclude -o bin/nnconf.o -c bin/nnconf.c\n"
	bins += "\tgcc -w -Iinclude -o bin/tunepc.o -c bin/tunepc.c\n"

	bins += "\tgcc -w -Iinclude -Ilib/dev -DSIMULATOR -DBATCH -o bin/bspice.o -c bin/main.c\n"
	bins += "\tgcc -w -o bspice.exe bin/bspice.o bin/bconf.o bin/tunepc.o -Llib -lfte -lcp -ldev3 -ldev2 -ldev1 -lckt -linp -lni -lsparse -lmisc \n"

	bins += "\tgcc -w -Iinclude -DSIMULATOR -DSPICE2 -DBATCH -o bin/cspice.o -c bin/main.c\n"
	bins += "\tgcc -w -o cspice.exe bin/cspice.o bin/cconf.o bin/tunepc.o -Llib -lfte -lcp -ldev3 -ldev2 -ldev1 -lckt -linp -lni -lsparse -lmisc \n"

	result := ""

	result += "all: build\n\n"

	result += "dev1:\n"
	result += ccDev1 + "\n"
	result += arCmd1 + arDev1 + "\n\n"

	result += "dev2:\n"
	result += ccDev2 + "\n"
	result += arDev2 + "\n\n"

	result += "dev3:\n"
	result += ccDev3 + "\n"
	result += arDev3 + "\n\n"

	for k, v := range ccLibs {
		result += k + ":\n"
		result += v + "\n"
		result += arLibs[k] + "\n\n"
	}

	result += bins + "\n"

	result += "build-lib: dev1 dev2 dev3 " + strings.Join(libs, " ") + "\n\n"

	result += "build: build-lib bins" + "\n\n"

	result += "clean:\n"
	result += "\trm -f lib/dev/*.o\n"
	for _, v := range dev1 {
		result += "\trm -f lib/dev/" + v + "/*.o\n"
	}
	for _, v := range dev2 {
		result += "\trm -f lib/dev/" + v + "/*.o\n"
	}
	for _, v := range dev3 {
		result += "\trm -f lib/dev/" + v + "/*.o\n"
	}
	for _, v := range libs {
		result += "\trm -f lib/" + v + "/*.o\n"
	}
	result += "\trm -f bin/*.o\n"

	d1 := []byte(result)
	err = ioutil.WriteFile("Makefile", d1, 0644)
	if err != nil {
		panic(err)
	}

	fmt.Println("Makefile is created")
}
