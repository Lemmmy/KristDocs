+++
type="page"

title = "Installing k.lua"
weight = 1

creatordisplayname = "Drew Lemmy"
creatoremail = "drew@lemmmy.pw"
lastmodifierdisplayname = "Drew Lemmy"
lastmodifieremail = "drew@lemmmy.pw"
+++

The recommended Krist API for Lua is [k.lua](https://github.com/justync7/k.lua) by [Justyn](https://github.com/justync7). This API makes use of [r.lua](https://github.com/justync7/r.lua), [w.lua](https://github.com/justync7/w.lua) and [Jua](https://github.com/justync7/Jua) to make the Krist API a breeze to interact with. You will also need the [JSON API by ElvishJerricco](http://www.computercraft.info/forums2/index.php?/topic/5854-json-api-v201-for-computercraft/) to create and parse the JSON objects required by the Krist API.

## Installing k.lua and dependencies
There is a simple script to download + install k.lua and all its dependencies. It can be used in one of two ways.

### Pastebin
```
pastebin run 4ddNhMYd
```

### wget
```
wget https://raw.githubusercontent.com/justync7/k.lua/master/kstrap.lua kstrap.lua
kstrap.lua
rm kstrap.lua
```