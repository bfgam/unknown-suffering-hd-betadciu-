function onEvent(name, value1, value2)
	if name == 'combo break set' then
	removeLuaText('miss', true)
	removeLuaScript('script2/invincible')
	addLuaScript('script2/no miss')

	makeLuaText('misss', 'Combo Breaks: -666' , 400, 0, 0);
	setTextSize('misss', 20)
	setTextAlignment('misss', 'left')
	setProperty('misss.x', 0)
	addLuaText('misss');

   end
end
