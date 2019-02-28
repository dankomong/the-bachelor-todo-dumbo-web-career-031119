def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data.each do |season_num, contestant|
    if season_num == season 
      contestant.each do |info|
        if info["status"] == "Winner"
          index_num = info["name"].index(" ")
          winner = info["name"][0...index_num]
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
    data.each do |season_num, contestant|
    contestant.each do |info|
      if info["occupation"] == occupation
        name = info["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
    count = 0
    data.each do |season_num, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
    name = nil
    data.each do |season_num, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        name = info["occupation"]
        break
      end
    end
  end
  name
end

def get_average_age_for_season(data, season)
  # code here
    contestants = 0
    age_sum = 0
    data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |info|
        age_sum += info["age"].to_i
        contestants += 1
      end      
    end
  end
  (age_sum/contestants).to_f.round
end
