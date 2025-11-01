local ye = {}

function ye.ngambilUsername(Http)
	local gam = game:GetService("UserService")--Pastikan Http ini dalam nya table seperti ModuleScript
	local se = Http
	local t = nil
	for i, v in ipairs(se) do
		if type(v) == "string" then
			local sd = tonumber(v)
			t = gam:GetUserInfosByUserIdsAsync({sd})[1].Username
		elseif type(v) == "number" then
		t = gam:GetUserInfosByUserIdsAsync({v})[1].Username
		end
	end
	return t
end

function ye.ngambilDisplayName(Http)
	local gam = game:GetService("UserService")--Pastikan Http ini dalam nya table seperti ModuleScript
	local se = Http
	local t = nil
	for i, v in ipairs(se) do
		if type(v) == "string" then
			local sd = tonumber(v)
			t = gam:GetUserInfosByUserIdsAsync({sd})[1].DisplayName
		elseif type(v) == "number" then
		t = gam:GetUserInfosByUserIdsAsync({v})[1].DisplayName
		end
	end
	return t
end

return ye
