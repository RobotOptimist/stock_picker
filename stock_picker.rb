class Stock_picker
	def self.picker (days = [])
		possible = []
		best = [0,0,0,0,0]
		days.each_with_index do |d,z|
			days.each_with_index do |c,y|
				if c-d > 0 && y > z then
					possible << [z,y,d,c, c-d]
				end
			end
		end
		possible.each do |a|
			possible.each do |b|
				if a[4] > b[4] && a[4] > best[4] then
					best = a
				end
			end
		end
		if best[4]==0 then
			p days
			p "you will lose if you buy these stocks"
		else
			p days
			p "buy on #{best[0]} and sell on #{best[1]}"
		end
	end
end

Stock_picker.picker([3,2,1])
Stock_picker.picker([1,2,3])
Stock_picker.picker([17,3,6,9,15,8,6,1,10])