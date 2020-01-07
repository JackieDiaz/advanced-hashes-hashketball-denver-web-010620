require 'pry'

def game_hash
    {
:away =>{ :team_name => "Charlotte Hornets",
          :colors => ["Turquoise", "Purple"],
          :players => [
            {:player_name => "Jeff Adrien",
             :number => 4,
             :shoe => 18,
             :points => 10,
             :rebounds => 1,
             :assists => 1,
             :steals => 2,
             :blocks => 7,
             :slam_dunks => 2
        },
        {:player_name => "Bismack Biyombo",
         :number => 0,
         :shoe => 16,
         :points => 12,
         :rebounds => 4,
         :assists => 7,
         :steals => 22,
         :blocks => 15,
         :slam_dunks => 10
        },
        {:player_name => "DeSagna Diop",
         :number => 2,
         :shoe => 14,
         :points => 24,
         :rebounds => 12,
         :assists => 12,
         :steals => 4,
         :blocks => 5,
         :slam_dunks => 5
         },
         {:player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
         },
         {:player_name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
         }
        ]
    },
  :home => { :team_name => "Brooklyn Nets",
             :colors => ["Black", "White"],
             :players => [
               {:player_name => "Alan Anderson",
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1 
               },
               {:player_name => "Reggie Evans",
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
               },
               {:player_name => "Brook Lopez",
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
               },
               {:player_name => "Mason Plumlee",
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 11,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5 
               },
               {:player_name => "Jason Terry",
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1 
               }
               ]
  }             
}
end 

def num_points_scored(players_name)
game_hash.each do |place, team|
  team.each do |attribute, data|
   if attribute == :players
     data.each do |player|
       if player[:player_name] == players_name
         return player[:points]
     end 
    end 
   end  
  end 
 end 
end 

def shoe_size(players_name)
  game_hash.each do |place, team|
  team.each do |attributes, data|
   if attributes == :players
     data.each do |player|
       if player[:player_name] == players_name
         return player[:shoe]
     end 
    end 
   end  
  end 
 end 
end 



def team_colors(team_name)         
  game_hash.each do |place, team|
    if team[:team_name] == team_name
      return team[:colors]
  end 
 end 
end 

def team_names
  game_hash.map do |place,team|
    team[:team_name]
  end 
end 

#def team_names
  #arr = []
  #game_hash.each do |place, team|
    #arr << team[:team_name]
  #end 
  #arr
#end 

def player_numbers(team_name)
arr = []
game_hash.each do |pleace, team|
 if team[:team_name] == team_name
   team.each do |attributes, data|
    if attributes == :players
      data.each do |player|
        arr << player[:number]
     end 
    end 
   end 
  end 
 end 
 arr
end 

def player_stats(players_name)
  n_hash = {}
   game_hash.each do |place, team|
    team.each do |attributes, data|
     if attributes == :players
       data.each do |player|
         if player[:player_name] == players_name
           n_hash = player.delete_if do |k, v|
             k == :player_name
        end 
     end 
    end 
   end 
  end 
 end
 n_hash
end 

# def players
#   players = game_hash.keys.map do  
#     game_hash
# end
# players 
# end 


# Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.

# def big_shoe_rebounds
#   rebounds = 0
#   shoesze = 0 
# game_hash.each do |place, team|
#     team.each do |attributes, data|
#       if attributes == :players
#         data.each do |player|
#           player.each do 
#             return player[:rebounds]
#     end 
#     end 
#   end 
# end 
# end 
# end 

def big_shoe_rebounds
  rebounds = 0
  shoesze = 0 
game_hash.each do |place, team|
    team[:players].each do |player|
      if player[:shoe] > shoesze
        player[:shoe] == shoesze
        player[:rebounds] == rebounds
      end 
    end 
  end 
  rebounds
end


#   Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:
# First, find the player with the largest shoe size
# Then, return that player's number of rebounds
# Remember to think about return values here.

# game_hash.each do |place, team|
#     team.each do |attributes, data|
#     if attributes == :players
#       data.each do |player|
#       player[:shoe] << arr