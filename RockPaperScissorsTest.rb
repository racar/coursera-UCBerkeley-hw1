require 'test/unit'
require './RockPaperScissors.rb'
class RockPaperScissorsTest < Test::Unit::TestCase 
  
  def test_rps_game_winner
    
    
    assert_equal ["Dave", "S"],rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
    assert_equal ["Dave", "P"],rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ] ])
    assert_equal ["Armando", "R"],rps_game_winner([ [ "Armando", "R" ], [ "Dave", "R" ] ])
    
    assert_raise(WrongNumberOfPlayersError) {rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ],["Rafael","S"] ])} 
    assert_raise(WrongNumberOfPlayersError) {rps_game_winner([ [ "Armando", "R" ]])}
   
    assert_raise(NoSuchStrategyError) {rps_game_winner([ [ "Armando", "X" ], [ "Dave", "P" ]])}
   
    
    
  end
  
  def test_rps_tournament_winner
    
    
   assert_equal ["Dave", "S"],rps_tournament_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])
   
   assert_equal ["Richard", "R"],rps_tournament_winner([
       [
      [["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"], ["Michael", "S"], ]
      ]
     ])
   end
   def test_ocho_players 
          assert_equal ["Richard", "R"],rps_tournament_winner([ 
      [
      [ ["Armando", "P"], ["Dave", "S"] ],
      [ ["Richard", "R"], ["Michael", "S"] ], ],
      [
      [ ["Allen", "S"], ["Omer", "P"] ],
      [ ["David E.", "R"], ["Richard X.", "P"] ] ] 
    ])
    
 end
  
    def test_diezseis_players 
  
 assert_equal ["A3", "R"],rps_tournament_winner(
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
  
 assert_equal ["A3", "R"],rps_tournament_winner(
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