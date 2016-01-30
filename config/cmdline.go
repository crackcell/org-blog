/***************************************************************
 *
 * Copyright (c) 2014, Menglong TAN <tanmenglong@gmail.com>
 *
 * This program is free software; you can redistribute it
 * and/or modify it under the terms of the GPL licence
 *
 **************************************************************/

/**
 *
 *
 * @file cmdline.go
 * @author Menglong TAN <tanmenglong@gmail.com>
 * @date Sun Nov 23 20:59:30 2014
 *
 **/

package config

import (
	"flag"
	"fmt"
	"os"
)

//===================================================================
// Public APIs
//===================================================================

var (
	Help     bool
	Verbose  bool
	WorkPath string
	LessLog  bool
)

func InitFlags() {
	flag.BoolVar(&Help, "help", false, "Print help message")
	flag.BoolVar(&Help, "h", false, "Print help message")
	flag.BoolVar(&Verbose, "verbose", false, "Use verbose output")
	flag.BoolVar(&Verbose, "v", false, "Use verbose output")
	flag.StringVar(&WorkPath, "path", "./", "Working path")
	flag.StringVar(&WorkPath, "p", "./", "Working path")
	flag.BoolVar(&LessLog, "less-log", false, "Less log output")
}

func Parse() {
	flag.Parse()
	if Help {
		showHelp(0)
	}
	if len(EntryFile) == 0 {
		fmt.Println("invalid arguments: no flow")
		showHelp(1)
	}
	if Hadoop && len(NameNode) == 0 {
		fmt.Println("invalid arguments: no namenode")
		showHelp(1)
	}
	if StatusSaver == "hdfs" && len(NameNode) == 0 {
		fmt.Println("invalid arguments: no namenode")
		showHelp(1)
	} else if StatusSaver == "sqlite" && len(SqliteFile) == 0 {
		fmt.Println("invalid arguments: no sqlite")
		showHelp(1)
	}
}

//===================================================================
// Private
//===================================================================

const (
	logoString = `                   __     __
.-----.----.-----.|  |--.|  |.-----.-----.
|  _  |   _|  _  ||  _  ||  ||  _  |  _  |
|_____|__| |___  ||_____||__||_____|___  |
           |_____|                 |_____|
`
	helpString = `Generate static contents
Usage:
    org-blog [options]
Options:
    -h, --help         Print this message
    -v, --verbose      Use verbose output

    -p, --path         Working path

    --less-log         Less log output
`
)

func showHelp(ret int) {
	fmt.Print(helpString)
	os.Exit(ret)
}

func LogoString() string {
	return logoString
}
