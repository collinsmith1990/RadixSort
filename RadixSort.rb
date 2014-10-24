class Sorter
	def radix(numbers)
		buckets = Array.new(10) { Array.new }
		m = 10
		n = 1
		(numbers.max.to_s.length).times do
			buckets[numbers[0]%m/n] << numbers.shift until numbers.empty?
			buckets.each { |bucket| numbers << bucket.shift until bucket.empty? } 
			m *= 10
			n *= 10
		end
		puts numbers
	end
end
