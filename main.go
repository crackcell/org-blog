/***************************************************************
 *
 * Copyright (c) 2016, Menglong TAN <tanmenglong@gmail.com>
 *
 * This program is free software; you can redistribute it
 * and/or modify it under the terms of the BSD licence
 *
 **************************************************************/

/**
 *
 *
 * @file main.go
 * @author Menglong TAN <tanmenglong@gmail.com>
 * @date Sat Jan 30 12:28:31 2016
 *
 **/

package main

import (
	"fmt"
	"github.com/crackcell/hpipe/config"
	"github.com/crackcell/hpipe/log"
	"os"
)

func main() {
	config.InitFlags()
	config.Parse()

	loglevel := 0
	if config.Verbose {
		loglevel = log.LOG_LEVEL_ALL
	} else {
		loglevel = log.LOG_LEVEL_TRACE | log.LOG_LEVEL_INFO |
			log.LOG_LEVEL_WARN | log.LOG_LEVEL_ERROR |
			log.LOG_LEVEL_FATAL
	}

	if config.LessLog {
		log.StdLogger = log.NewDefaultCleanLogger(
			os.Stdout, "hpipe", loglevel)
	} else {
		log.StdLogger = log.NewDefault(
			os.Stdout, "hpipe", loglevel)
	}

	util.LogLines(config.LogoString(), nil)
	util.LogLines(d.String(), nil)

	os.Exit(1)
}
