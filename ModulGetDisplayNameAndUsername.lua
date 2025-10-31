local se = {}

function se:ngambilUserName(Http)
	local gam = game:GetService("UserService")--Pastikan Http ini dalam nya table seperti ModuleScript
	local se = loadstring(game:HttpGet(Http))()
	local t = {}
	local num = 1
	for i, v in ipairs(se) do
		if type(v) == "string" then
			local sd = tonumber(v)
			table.insert(t, gam:GetUserInfosByUserIdsAsync({sd})[num].Username)
		elseif type(v) == "number" then
			table.insert(t, gam:GetUserInfosByUserIdsAsync({sd})[num].Username)
		end
		num += 1
	end
	return t
end

return se
