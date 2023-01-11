function onCreate()
    setProperty('healthBar.alpha', tonumber(0))
    setProperty('iconP1.alpha', tonumber(0))
    setProperty('iconP2.alpha', tonumber(0))
    setProperty("skipCountdown", true)
    	setProperty('timeBar.visible', false);
    	setProperty('timeBarBG.visible', false);
    	setProperty('timeTxt.visible', false);
	removeLuaScript('script2/no miss')
	addLuaScript('script2/invincible')
	setPropertyFromClass('GameOverSubstate', 'characterName', 'exe'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'disobeying rules'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'try harder next time'); --put in mods/music/

end

function onCreatePost()
	--disable psych stuff
	setProperty('scoreTxt.visible', false)
	setProperty('timeBar.visible', true)
	setProperty('Rating.visible', true)
	setProperty('Misses.visible', false)
    	setProperty('timeBar.visible', false);
    	setProperty('timeBarBG.visible', false);
    	setProperty('timeTxt.visible', false);

	--things
	makeLuaText('miss', 'Combo Breaks: ' .. getProperty('songMisses'), 200, 0, 0);
	setTextSize('miss', 20)
	setTextAlignment('miss', 'left')
	setProperty('miss.x', 0)
	addLuaText('miss');
end

function onRecalculateRating()
	--to get the amout of misses
	setTextString('miss', 'Combo Breaks: ' .. getProperty('songMisses'));
end