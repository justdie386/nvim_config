package.path = package.path..";"..os.getenv("NVIM_ROOT").."\\?.lua"
require("lualsp")
require("luacmp")
require("terminal")
require("utils")
require("themes")
require("tree")
