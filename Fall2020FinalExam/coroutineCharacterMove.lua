target = 10
winner = 0

function movejohn()
        local covered = 0
        while true do
                local stepsize = math.random()
                covered = covered + stepsize
                at = covered
                if at > target then
                        winner = 1
                else
                        winner = 0
                end
                coroutine.yield()
        end
end

function movejane()
        local covered = 10.0
        while true do
                local stepsize = math.random()*0.9
                covered = covered + stepsize
                at = covered
                target = at
                coroutine.yield()
        end
end

-- Create 10 different coroutine for 10 characters

characters = {coroutine.create(movejane)}
for k = 1, 10 do
        crh = coroutine.create(movejohn)
        characters[#characters+1] = crh
end

math.randomseed(os.time())

-- Run the movement routine for each in turn

for seconds = 1, 200 do
        for person = 1,#characters do
                coroutine.resume(characters[person])
                io.write (string.format("%6.2f ",at))
                if winner == 1 then break end
        end
        if winner == 1 then
                io.write(" WONHER\n")
                break
        end
        io.write("\n")
end
