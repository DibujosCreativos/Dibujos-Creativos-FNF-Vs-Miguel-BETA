-- this gets called starts when the level loads.
local paso = 0
local flag = 0
local counter = 8
function start(song) -- arguments, the song name
end

-- this gets called every frame
function update(elapsed) -- arguments, how long it took to complete a frame
	if flag == 1 then
		flag = 0
		if paso == 0 then
			tweenPosOut("dad", getActorX("dad"), getActorY("dad")-50, 2.0)
		end
		if paso == 1 then
			tweenPosOut("dad", getActorX("dad"), getActorY("dad")+50, 2.0)
		end
		counter = counter + 25
	else
		if curStep == counter then
		if paso == 0 then
			paso = 1
		else
			paso = 0
		end
		flag = 1
		end
	end
end

-- this gets called every beat
function beatHit(beat) -- arguments, the current beat of the song

end

-- this gets called every step
function stepHit(step) -- arguments, the current step of the song (4 steps are in a beat)

    if step == 736 then
       playAnim('dad', 'prettygood')
    end

	if step == 1 then
		tweenPosOut("dad", getActorX("dad"), getActorY("dad")-150, 2.0)
	end
end
