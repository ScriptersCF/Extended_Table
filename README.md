# Sample_Package  ![spm | table](https://img.shields.io/badge/spm-sample-blue)
A sample package repository used in the Package Manager.


#### Usage:
```lua
local require = require(game.ReplicatedStorage:WaitForChild("PackageManager").Load)
local table = require("table")

local tbl = {1, 2, 3, ["A"] = "B"}

local copy = table.deepcopy(tbl)
print(copy == tbl)
```

` > false`
