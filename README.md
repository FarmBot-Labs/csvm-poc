[![Coverage Status](https://coveralls.io/repos/github/RickCarlino/CeleryScript-Runtime/badge.svg?branch=master)](https://coveralls.io/github/RickCarlino/CeleryScript-Runtime?branch=master)
[![Build Status](https://travis-ci.org/RickCarlino/CeleryScript-Runtime.svg?branch=master)](https://travis-ci.org/RickCarlino/CeleryScript-Runtime)
# CeleryScript Runtime Environment

Where CeleryScript code gets executed.

# Deps

1. Install Lua.
2. Install LuaRocks and Deps:

```
sudo luarocks
sudo luarocks install busted
sudo luarocks install luacov
sudo luarocks install luasocket
sudo luarocks install lualint
sudo luarocks install penlight
```

# Run Tests

```
busted .
```

# Linting

```
luacheck --std max+busted lua_lib/*.lua
```

# Debug / Local Dev

```
CELERY_ENV=dev lua lua_lib/_main.lua
```

In a web browser, open [http://localhost:8000/](http://localhost:8000/).

Dev mode exposes an `INBOX` global variable which may be useful for debugging VM/host messages.

Example: Running a `CODE.CREATE` call:

```
INBOX.push_req("CODE", "CREATE")
```

# View Coverage

```
luacov
cat luacov.report.out
```
