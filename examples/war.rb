@deck = [
  2,2,2,2,
  3,3,3,3,
  4,4,4,4,
  5,5,5,5,
  6,6,6,6,
  7,7,7,7,
  8,8,8,8,
  9,9,9,9,
  10,10,10,10,
  11,11,11,11, # Jack
  12,12,12,12, # Queen
  13,13,13,13, # King
  14,14,14,14  # Ace
].shuffle

@player_one_draw_pile = []
@player_two_draw_pile = []

@deck.each_slice(2) do |n1, n2|
  @player_one_draw_pile << n1
  @player_two_draw_pile << n2
end

def draw(deck)
  card = deck.shift
  card
end

def card_name(card)
  return "Jack" if card == 11
  return "Queen" if card == 12
  return "King" if card == 13
  return "Ace" if card == 14
  card
end

def battle
  player_one_card = draw(@player_one_draw_pile)
  puts "Player One Draws a #{card_name(player_one_card)}"
  player_two_card = draw(@player_two_draw_pile)
  puts "Player Two Draws a #{card_name(player_two_card)}"
  if @player_one_card == @player_two_card
    war
  else
    if player_one_card > player_two_card
      @player_one_draw_pile << player_one_card
      @player_one_draw_pile << player_two_card
    else
      @player_two_draw_pile << player_one_card
      @player_two_draw_pile << player_two_card
    end
  end

  puts "Player One Has #{@player_one_draw_pile.size} card(s)"
  puts "Player Two Has #{@player_two_draw_pile.size} card(s)"
end

def war
end

while(@player_one_draw_pile.size > 0 || @player_two_draw_pile > 0)
  battle
end