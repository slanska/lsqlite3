# lsqlite3
Fork of http://lua.sqlite.org/index.cgi/home - Lua wrapper for SQLite - with few fixes and improvements


### Original README

LuaSQLite3 provides a means to manipulate SQLite3 
databases directly from lua using Lua 5.

There are two modules, identical except that one links
SQLite3 dynamically, the other statically.

The module lsqlite3 links SQLite3 dynamically.
To use this module you need the SQLite3 library.
You can get it from http://www.sqlite.org/

The module lsqlite3complete links SQLite3 statically.
The SQLite3 amalgamation source code is included in 
the LuaSQLite3 distribution.

Lua 5 is available from http://www.lua.org/

### Fork Notes

The following fixes and improvements have been applied:

* **lsqlite3complete** is built with recent version of SQLite (3.21.0, of October 24, 2017)

* **lsqlite3complete** is built with [FTS3/FTS4](http://sqlite.org/fts3.html), 
[FTS5](http://sqlite.org/fts5.html), [RTREE](http://sqlite.org/rtree.html), 
[JSON1](http://sqlite.org/json1.html) enabled

### Installation Notes

Recommended installation flow:

**On Linux** you may need to install SQLite library:

For example, on Ubuntu:
```shell
sudo apt-get sqlite3
sudo apt-get install libsqlite3-dev
```

Install on LuaRocks

```shell
git clone https://github.com/slanska/lsqlite3.git
cd  lsqlite3
sudo make
``` 
**Note**: _make_ will install compiled output into LuaRocks directory. If you have had original version
of this library (from lua.sqlite.org), this build will override it.

### Disclaimer

This fork was created to serve specific need for my own project ([Flexilite](https://github.com/slanska/flexilite)).
It may or may not fit your specific needs. Use at your own risk.  

### License 

Same as original library - MIT

