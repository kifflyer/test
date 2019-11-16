def main
	file = File.new("input.txt", "w+")
	for i in 0...50
		file.puts -100 + rand(200)
	end
	file.close
	arr = []
	File.readlines("input.txt").each { |tmp|
		arr.push(tmp.to_i)
	}
	count = 0
	for i in 0...50
		if arr[i] < 0
			count += 1
		end
	end
	puts "Count of negative elements of the array is equal to: #{count}"
	file = File.new("out.txt", "w+")
	for i in 0...50
		if arr[i] < 0
			file.puts "arr[#{i}]: #{arr[i]}"
		end
	end
	file.puts "Count: #{count}"
	file.close

end

main
