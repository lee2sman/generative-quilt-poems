#!/usr/bin/env lua

local total_quilts=700
local BW=true
local debugger=false
local color = require "color"
local open = io.open
require "quilts"

local data_files={}
local words={}
local file

local pieces={}
local pat
local max_piece_width=0

local color_scheme_fg={color.fg.black, color.fg.red, color.fg.green, color.fg.yellow, color.fg.blue, color.fg.pink, color.fg.cyan, color.fg.white}
local color_scheme_bg={color.bg.black, color.bg.red, color.bg.green, color.bg.yellow, color.bg.blue, color.bg.pink, color.bg.cyan, color.bg.white}

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
  max_piece_width=0
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
  print()
  print()
  print("Data source: "..file)
  print("Pieces:")
  for i,piece in ipairs(pieces) do
    print(i..": "..piece)
  end
  print("Block width: "..max_piece_width)
end

local function shuffle_colors(tab)
	for i = #tab, 2, -1 do
		local j = math.random(i)
		tab[i], tab[j] = tab[j], tab[i]
	end
end

local function select_pattern()
  return math.random(#quilt)
end

local function split(phrase)
  chunks = {}
  for substring in phrase:gmatch("%S+") do
     table.insert(chunks, substring)
  end
  return chunks
end

local function capitalize_title(t)
  local capped=""
  for _,word in ipairs(t) do
    capped=capped..firstToUpper(word).." "
  end
  return capped
end

local function make_quilt()
  print()
  local title = pieces[1].." "..pieces[2].." "..quilt_types[pat].." quilt"
  local titleTable = split(title)
  print(capitalize_title(titleTable))
  print()
  for y=1,8 do
    local line=""
    for x=1,8 do
      local word=pieces[quilt[pat][y][x]]
      local spaces=""
      local total_spaces=0

      for i=#word,max_piece_width do
	 total_spaces=total_spaces+1
      end
      local total_before=math.floor(total_spaces/2)
      local total_after=total_spaces-total_before
      local before_spaces=""
      for i=1,total_before do
	before_spaces=before_spaces.." "
      end
      local after_spaces=""
      for i=1,total_after do
	after_spaces=after_spaces.." "
      end
      if BW then
	line=line..before_spaces..word..after_spaces
      else
	line=line..color_scheme_fg[quilt[pat][y][x]]..color_scheme_bg[quilt[pat][y][x]]..before_spaces..word..after_spaces
      end
    end
    if BW then
      print(line) 
    else
      print(color.reset..line) 
    end
  end
end
--------------- MAIN ------------------
--init - only once
init_random()
get_files()

--for every quilt
for j=1,total_quilts do
    file = pick_datafile()
    pat=select_pattern()
    create_wordlist()

    create_pieces()
    if debugger then
      debug()
    end

    shuffle_colors(color_scheme_fg)
    shuffle_colors(color_scheme_bg)
    make_quilt()
end
