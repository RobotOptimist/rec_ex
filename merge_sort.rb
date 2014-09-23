class Mergin

	def merge(b,c)
		ap = 0; bp = 0; cp = 0
		until cp > c.length or bp > b.length do
			if b[bp] < c[cp]
				a[ap] = b[bp]; bp += 1; ap += 1
			else
				a[ap] = c[cp]; cp += 1; ap += 1
			end
		end
		p a
	end

	def merge_sort(arr)
		if arr.length > 1
			half = arr.length / 2
			b = arr[0, half]
			c = arr[half, arr.length]
			merge_sort(b)
			merge_sort(c)
			merge(b,c)
		end			
	end
end

um = Mergin.new
um.merge_sort([1,2,3,4])
um.merge_sort([1,2,3])
um.merge_sort([1,2])