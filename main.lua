local color = require "color"
local open = io.open

local data_files={}
local words={}
local file

--[[
housetop

77777777
76666668
76555518
76544418
76542318
76543318
76111118
78888888
]]

local pieces={}
local max_piece_width=0

local function init_random()
  math.randomseed(os.time())
end

local function get_files()
  for dir in io.popen([[ls -pa ./data | grep -v /]]):lines() do 
    table.insert(data_files, dir)
  end
end

local function pick_datafile()
  return data_files[math.random(#data_files)]
end

local function read_file(path)
  local file = open(path, "r")
  if not file then return nil end
  local content = file:read "*all"
  file:close()
  return content
end

local function create_wordlist()
  for line in io.lines("data/"..file) do
    table.insert(words, line)
  end
end

local function create_pieces()
  for i=1,8 do
    --get pieces
    pieces[i]=words[math.floor(math.random(#words))]

    --get block width
    if #pieces[i]>max_piece_width then
      max_piece_width=#pieces[i]
    end
  end
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function debug()
  print("Data source: "..file)
  print("Pieces:")
  for i,piece in ipairs(pieces) do
    print(i..": "..piece)
  end
  print("Block width: "..max_piece_width)
end
local color_scheme_fg={color.fg.black, color.fg.red, color.fg.green, color.fg.yellow, color.fg.blue, color.fg.pink, color.fg.cyan, color.fg.white}
local color_scheme_bg={color.bg.black, color.bg.red, color.bg.green, color.bg.yellow, color.bg.blue, color.bg.pink, color.bg.cyan, color.bg.white}

local function shuffle_colors(tab)
	for i = #tab, 2, -1 do
		local j = math.random(i)
		tab[i], tab[j] = tab[j], tab[i]
	end
end
quilt=
{
  {7,7,7,7,7,7,7,7},
  {7,6,6,6,6,6,6,8},
  {7,6,5,5,5,5,1,8},
  {7,6,5,4,4,4,1,8},
  {7,6,5,4,2,3,1,8},
  {7,6,5,4,3,3,1,8},
  {7,6,1,1,1,1,1,8},
  {7,8,8,8,8,8,8,8},
}
local function housetop()
  print()
  print(firstToUpper(pieces[1]).." "..firstToUpper(pieces[2]).." quilt, housetop variation")
  print()
  for y=1,8 do
    local line=""
    for x=1,8 do
      --local word=pieces[x]
      local word=pieces[quilt[y][x]]
      local spaces=""
      for i=#word,max_piece_width do
	 spaces=spaces.." "
      end
      line=line..color_scheme_fg[quilt[y][x]]..color_scheme_bg[quilt[y][x]]..word..spaces
    end
    print(color.reset..line) 
  end
end
--------------- MAIN ------------------
--TEST
get_files()
file = pick_datafile()

create_wordlist()

init_random()
create_pieces()
--debug()

shuffle_colors(color_scheme_fg)
shuffle_colors(color_scheme_bg)
housetop()

