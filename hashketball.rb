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

# Write code here


def num_points_scored(name)
data = game_hash
points_scored = 0 
data.each do |team_key, value|
  data[team_key].each do |team_attributes, value|
    data[team_key][:players].each do |hash|
      if hash[:player_name] == name
        points_scored = hash[:points]
      end
    end 
  end 
end 
points_scored  
end

def shoe_size(name)
data = game_hash
player_shoe_size = 0 
data.each do |team_key, value|
  data[team_key].each do |team_attributes, value|
    data[team_key][:players].each do |hash|
      if hash[:player_name] == name
        player_shoe_size = hash[:shoe]
      end
    end 
  end 
end 
player_shoe_size
end

def team_colors(team_name)
  data = game_hash
  selected_team_colors = []
  data.each do |team_key, value|
    if data[team_key][:team_name] == team_name
      selected_team_colors = data[team_key][:colors]
    end 
  end 
selected_team_colors
end 

def team_names
  data = game_hash
  team_names_array = []
  data.each do |team_key, value|
    team_names_array << data[team_key][:team_name]
  end 
team_names_array
end 
  
def player_numbers(team_name)
  data = game_hash
  player_numbers_array = []
  data.each do |team_key, value|
    if data[team_key][:team_name] == team_name
      data[team_key].each do |team_attributes, value|
        data[team_key][:players].each do |hash|
          if !player_numbers_array.include?(hash[:number])
            player_numbers_array << hash[:number]
          end 
        end 
      end 
    end 
  end 
player_numbers_array
end 

def player_stats(name)
  data = game_hash
  selected_player_stats = {} 
  data.each do |team_key, value|
    data[team_key].each do |team_attributes, value|
      data[team_key][:players].each do |hash|
        if hash[:player_name] == name
          selected_player_stats = hash
      end
    end 
  end 
end 
selected_player_stats
end  

def big_shoe_rebounds
  data = game_hash
  biggest_shoe = 0 
  biggest_shoe_wearer=""
  biggest_shoe_rebounds = 0
  data.each do |team_key, value|
    data[team_key].each do |team_attributes, value|
      data[team_key][:players].each do |hash|
        if hash[:shoe] > biggest_shoe
          biggest_shoe = hash[:shoe]
          biggest_shoe_rebounds = hash[:rebounds]
          biggest_shoe_wearer = hash[:name]
        end 
      end 
    end
  end 
biggest_shoe_rebounds
end 

