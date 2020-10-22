require "pry"

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

def num_points_scored(player)
  points_scored_by_player = 0
  game_hash[:home][:players].each do |array_element|
    if array_element[:player_name] == player
      points_scored_by_player = array_element[:points]
    end
  end
    game_hash[:away][:players].each do |array_element|
    if array_element[:player_name] == player
      points_scored_by_player = array_element[:points]
    end
  end
  points_scored_by_player
end

def shoe_size(player)
  shoe_size_of_player = 0
  game_hash[:home][:players].each do |array_element|
    if array_element[:player_name] == player
      shoe_size_of_player = array_element[:shoe]
    end
  end
  game_hash[:away][:players].each do |array_element|
    if array_element[:player_name] == player
      shoe_size_of_player = array_element[:shoe]
    end
  end
  shoe_size_of_player
end

def team_colors(team)
  array_of_team_colors = []
  
  if game_hash[:home][:team_name] == team
    array_of_team_colors = game_hash[:home][:colors]
  end
    if game_hash[:away][:team_name] == team
    array_of_team_colors = game_hash[:away][:colors]
  end
  array_of_team_colors
end

def team_names
  total_team_names = []
  
  game_hash.each do |key, value|
    total_team_names << value[:team_name]
  end
  
  total_team_names
end

def player_numbers(team)
  numbers_on_team = []
  
  game_hash.each do |key, value|
    if value[:team_name] == team
      value[:players].each do |player_hash|
        numbers_on_team << player_hash[:number]
      end
    end
  end  
  numbers_on_team
end

def player_stats(player)
  this_player_stats = {}
  
  game_hash.each do |key, value|
    value[:players].each do |player_hash|
      if player == player_hash[:player_name]
        this_player_stats = player_hash
      end
    end
  end  
  
  this_player_stats
end

def big_shoe_rebounds
  rebounds = 0
  biggest_shoe_found = 0
  
  game_hash.each do |key, value|
    value[:players].each do |player_hash|
      if player_hash[:shoe] > biggest_shoe_found
        biggest_shoe_found = player_hash[:shoe]
        rebounds = player_hash[:rebounds]
      end
    end
  end
  rebounds
end
