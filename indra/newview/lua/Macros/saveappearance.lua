--[[
	Back up appearance
	 
	 Copyright (C) 2008-2009 Luna Contributors
	 
	 This program is free software; you can redistribute it and/or modify
	 it under the terms of the GNU General Public License as published by
	 the Free Software Foundation; either version 2 of the License, or
	 (at your option) any later version.
	 
	 This program is distributed in the hope that it will be useful,
	 but WITHOUT ANY WARRANTY; without even the implied warranty of
	 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	 GNU General Public License for more details.
	 
	 You should have received a copy of the GNU General Public License along
	 with this program; if not, write to the Free Software Foundation, Inc.,
	 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
		
	$Id$
]]--

local i = 0;
local fname = "";
while( true ) do
	fname = ("lua/Macros/appearance_"..i..".lua")
	i=i+1;
	if not (exists(fname)) then break end 
end
print ("Dumping all params to "..fname.."...")
local code = LuaDumpVisualParamsToLuaCode()
if code  == "" then
	error "Error; Aborting!"
else
	local f = io.open(fname,"w")
	f:write(code)
	f:close()
	print "Done."
end
