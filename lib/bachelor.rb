def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
# 		if key == season
# 			value.each do |ele|
# 				puts ele["name"]
# 				puts ele["status"]
# 			end
# 		end
		value.each do |ele|
			if key == season && ele["status"] == "Winner"
				return ele["name"].split(" ")[0]
# 				puts ele["status"]
			end
		end
	end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
		value.each do |obj|
			if obj["occupation"] == occupation
				return obj["name"]
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

	data.each do |key, value|
		value.each do |obj|
			if obj["hometown"] == hometown
				# puts obj["name"]
				count += 1
			end
		end
	end

	return count
end

def get_occupation(data, hometown)
  data.each do |key, value|
		value.each do |obj|
			if obj["hometown"] == hometown
				return obj["occupation"]
			end
		end
	end
end

def get_average_age_for_season(data, season)
  count = 0.0
	sum = 0.0

	data.each do |key, value|
		if key == season
			value.each do |obj|
				sum += obj["age"].to_i
				count += 1
			end
		end
	end

  average = sum / count
	return average.round
end
