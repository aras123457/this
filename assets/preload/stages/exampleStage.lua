function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagecurtains', 'stagecurtains', -550, -200);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.96, 0.96);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end