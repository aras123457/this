function onCreate()
	-- background shit
	makeLuaSprite('stageback2', 'stageback2', -600, -300);
	setLuaSpriteScrollFactor('stageback2', 0.9, 0.9);
	
	makeLuaSprite('stagefront2', 'stagefront2', -650, 600);
	setLuaSpriteScrollFactor('stagefront2', 0.9, 0.9);
	scaleObject('stagefront2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagecurtains2', 'stagecurtains2', -550, -200);
		setLuaSpriteScrollFactor('stagecurtains2', 1.3, 1.3);
		scaleObject('stagecurtains2', 0.96, 0.96);
	end

	addLuaSprite('stageback2', false);
	addLuaSprite('stagefront2', false);
	addLuaSprite('stagecurtains2', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end