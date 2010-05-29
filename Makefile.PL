#!/usr/bin/perl
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME=>'rmshit',
	AUTHOR => 'Magnus Woldrich <trapd00r@trapd00r.se>',
	VERSION_FROM=>'rmshit',
	ABSTRACT=>'rmshit watches your homedir for nasty, unwanted files',
	EXE_FILES=>['rmshit'],
	LICENSE=>'GNU GPLv2',
	PREREQ_PM=>{
		'Linux::Inotify2'=>0,
		'Working::Daemon'=>0,
	},
);

