require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
      if attribute[:player_name] == player_name
        return attribute[:points]
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
      if attribute[:player_name] == player_name
        return attribute[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      return team_data[:colors]
    end
  end
end

def team_names
  array = []
  array << game_hash[:away][:team_name]
  array << game_hash[:home][:team_name]
  array
end

def player_numbers(team_name)
  array = []
    game_hash.each do |location, team_data|
      if team_data[:team_name] == team_name
        team_data[:players].each do |attribute|
           array << attribute[:number]
        end
      end
    end
  return array
end 

def player_stats(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
      if attribute[:player_name] == player_name
        return attribute
      end
    end
  end
end

def big_shoe_rebounds
  largest_shoe_size = nil
  largest_shoe_rebounds = nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
       if largest_shoe_size == nil || attribute[:shoe] > largest_shoe_size
         largest_shoe_size = attribute[:shoe]
         largest_shoe_rebounds = attribute[:rebounds]
       end
    end
  end
 return largest_shoe_rebounds
end


#Bonus Questions

def most_points_scored
  most_points_value = nil
  most_points_key = nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
       if most_points_value == nil || attribute[:points] > most_points_value
         most_points_value = attribute[:points]
         most_points_key = attribute
       end
    end
  end
 p most_points_key[:player_name]
end

def winning_team
  away_team_score = []
  home_team_score = []
    game_hash[:away][:players].each do |key, value|
      away_team_score << key[:points]
    end
    game_hash[:home][:players].each do |key, value|
      home_team_score << key[:points]
    end
  if away_team_score.sum > home_team_score.sum
    p game_hash[:away][:team_name]
  else 
    p game_hash[:home][:team_name]
  end
end

def player_with_longest_name
  longest_name = nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
       if longest_name == nil || attribute[:player_name].length > longest_name.length
         longest_name = attribute[:player_name]
       end
    end
  end
 p longest_name
end

#Super Bonus Questions

def player_most_steals
  most_steals = nil
  most_steals_key = nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |attribute|
       if most_steals == nil || attribute[:steals] > most_steals
         most_steals = attribute[:steals]
         most_steals_key = attribute
       end
    end
  end
 return most_steals_key[:player_name] 
end

def long_name_steals_a_ton?
  if player_most_steals == player_with_longest_name
    puts true
  else 
    puts false
  end
end
