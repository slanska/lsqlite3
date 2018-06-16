# Makefile for lsqlite3 library for Lua

LIBNAME= lsqlite3
LIBNAME2= lsqlite3complete

LUAEXE= luajit

ROCKSPEC= $(shell find . -name $(LIBNAME)-*-*.rockspec)
ROCKSPEC2= $(shell find . -name $(LIBNAME2)-*-*.rockspec)

all: install

install:
	luarocks make $(ROCKSPEC)
	luarocks make $(ROCKSPEC2)

test: 
	$(LUAEXE) test/test.lua
	$(LUAEXE) test/tests-sqlite3.lua lsqlite3
	$(LUAEXE) test/tests-sqlite3.lua lsqlite3complete

.PHONY: all test install
