require 'test/unit'
require './RockPaperScissors.rb'
class RockPaperScissorsTest < Test::Unit::TestCase 
  
  def test_rps_game_winner
    rockPaperScissors = RockPaperScissors.new
    
    assert_equal ["Dave", "S"],rockPaperScissors.rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
    assert_equal ["Dave", "P"],rockPaperScissors.rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ] ])
    assert_equal ["Armando", "R"],rockPaperScissors.rps_game_winner([ [ "Armando", "R" ], [ "Dave", "R" ] ])
    
    assert_raise(WrongNumberOfPlayersError) {rockPaperScissors.rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ],["Rafael","S"] ])} 
    assert_raise(WrongNumberOfPlayersError) {rockPaperScissors.rps_game_winner([ [ "Armando", "R" ]])}
   
    assert_raise(NoSuchStrategyError) {rockPaperScissors.rps_game_winner([ [ "Armando", "X" ], [ "Dave", "P" ]])}
   
    
    
  end
  
  def test_rps_tournament_winner
    rockPaperScissors = RockPaperScissors.new
    
   assert_equal ["Dave", "S"],rockPaperScissors.rps_tournament_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
   
   assert_equal ["Richard", "R"],rockPaperScissors.rps_tournament_winner([
       [
      [["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"], ["Michael", "S"], ]
      ]
     ])
   end
   def test_ocho_players 
      rockPaperScissors = RockPaperScissors.new
    assert_equal ["Richard", "R"],rockPaperScissors.rps_tournament_winner([ 
      [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"], ["Michael", "S"] ], ],
      [
      [ ["Allen", "S"], ["Omer", "P"] ],
      [ ["David E.", "R"], ["Richard X.", "P"] ] ] 
    ])
    
 end
  
    def test_diezseis_players 
  rockPaperScissors = RockPaperScissors.new
 assert_equal ["A3", "R"],rockPaperScissors.rps_tournament_winner(
 [
  [
    [
      [ ["A1", "P"], ["A2", "S"] ],
      [ ["A3", "R"],  ["A4", "S"] ],           
    ],
    [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"],  ["Michael", "S"] ], 
    ]
  ],
  [
    [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"],  ["Michael", "S"] ], 
    ],
    [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"],  ["Michael", "S"] ], 
    ]
  ]
]
   )
   

  end
  
  def test_treintados_players 
  rockPaperScissors = RockPaperScissors.new
 assert_equal ["A3", "R"],rockPaperScissors.rps_tournament_winner(
 [
  [
      [
      [ 
         [ [ "Allen", "P" ], [ "Dave", "S" ] ],         #dave     #dave                 Dave
         [ [ "Richard", "R" ] , [ "Armando", "P" ] ]    #armando
      ], 
      [ 
         [ [ "Omer", "P" ], [ "David", "S" ] ],         #david        #david
         [ [ "Max", "R" ] , [ "Jonathan", "P" ] ]       #jonathan
      ], 
      ],
     [
      [ 
       [ [ "Allen", "P" ], [ "Dave", "S" ] ],           #dave           #dave
       [ [ "Richard", "R" ] , [ "Armando", "P" ] ]      #armando
      ], 
      [ 
       [ [ "Omer", "P" ], [ "David", "S" ] ],           #david          #david
       [ [ "Max", "R" ] , [ "Jonathan", "P" ] ]         #jonatan
      ], 
      ]
  ],
  [
  [
    [
      [ ["A1", "P"], ["A2", "S"] ],
      [ ["A3", "R"],  ["A4", "S"] ],           
    ],
    [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"],  ["Michael", "S"] ], 
    ]
  ],
  [
    [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"],  ["Michael", "S"] ], 
    ],
    [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"],  ["Michael", "S"] ], 
    ]
  ]
]  
  
  ]
   )
  end
  
end