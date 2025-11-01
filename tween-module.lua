local module = {}

function module.tween(namepart: Instance, target, style, waittime)
	local tweenservice = game:GetService("TweenService")
	
	local wai = TweenInfo.new(
		waittime,
		style,
		Enum.EasingDirection.InOut
	)
	
	local goal = target
	
	tweenservice:Create(namepart, wai, goal):Play()
end

return module
