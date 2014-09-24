class Mergin

	def merge(b,c)
		arr = []
		
		until b.empty? || c.empty? do
			if b[0] <= c[0]
				arr << b.shift
			elsif c[0] < b[0]
				arr << c.shift
			end
		end
		
		arr + b + c
	end

	def merge_sort(arr)
		return arr if arr.length <= 1
		
		half = arr.length / 2
		x = arr[0,half]
		y = arr[half,arr.length]
		
		
		b = merge_sort(x)
		c = merge_sort(y)
		
		merge(b,c)
	end
end

um = Mergin.new
#p um.merge_sort([4,2,3,1])
#p um.merge_sort([3,1,2])
#p um.merge_sort([2,5]) 
p um.merge_sort([8,2,5,7,90,104,1,2,22])