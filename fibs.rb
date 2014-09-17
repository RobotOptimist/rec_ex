def fibs(n)
	fib = [1,2]
	if n == 2
		p fib
		return
	elsif n == 1
		p fib = [1]
		return
	end
	until fib[-1] >= n do
		x = fib[-1]
		y = fib[-2]
		fib << x + y
	end
	p fib
end

fibs(1) #=> [1]
fibs(2) #=> [1,2]
fibs(3) #=> [1,2,3]
fibs(4) #=> [1,2,3,5]

def fibs_rec(n, fib = [1,2])
	until (fib[-1] + fib[-2]) == n do
	
end

fibs_rec(5)