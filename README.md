# Extended_Table  ![spm | table](https://img.shields.io/badge/spm-table-blue)
An extended table library that can be accessed via the ScriptersCF Package Manager.


#### Usage:
```lua
local require = require(game.ReplicatedStorage:WaitForChild("PackageManager").Load)
local table = require("table")

local tbl = {1, 2, 3, ["A"] = "B"}
local copy = table.deepcopy(tbl)
print(copy == tbl)
```

` > false`
