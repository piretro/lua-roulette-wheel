local choices = {["apples"]= 5, ["flour"] = 1, ["milk"]=1, ["oranges"]=1} 

local function roll(t)
   local function getSum(tb)
  	local sum = 0
	  	for k,v in pairs(tb) do
		  	sum = sum+v
	  	end
  	return sum
   end
   
   local maxvalue = getSum(t)
   if maxvalue > 0 then --check if sum>0
	   local  c  =  0
	   local r = math.random(maxvalue)
	   for i,n in pairs(t) do
		   c = c + n
		   if r <= c then
			   return i
		   end
	   end
	else
		print("unable to proceed: fitness sum = 0")
	end
 end


