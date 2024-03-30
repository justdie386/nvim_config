local number = 20

for i=1,number do
	print(i/3)
   if not string.find(tostring(i / 3), ".") and not string.find(tostring(i / 5), ".") then
   	print("fizzbuzz")
elseif not string.find(tostring(i / 3), ".") then
	print("fizz")
elseif not string.find(tostring(i / 5), ".") then
	print("buzz")	
else
	print(i)
	end
end
