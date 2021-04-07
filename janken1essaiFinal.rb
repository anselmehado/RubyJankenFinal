
class Player
  def hand

    puts "Veuillez entrer  pour demarrer le game"
    puts "0 : Goo, 1 : Choki, 2 : Par"

    player_hand = gets.chomp


      while true do

        if player_hand == "0" || player_hand == "1" || player_hand == "2"

          return player_hand

        else

          puts "Veuillez saisir à nouveau le numéro."

          puts "0 : Goo, 1 : Choki, 2 : Par"

          player_hand = gets.chomp

        end
      # end while文のend
      end
  end
end

class Enemy
  def hand
    #enemy_hand = 1
    enemy_hand = rand(3)
    # la valeur donnee par l'adversaire est aleatoire donne par la foction rend

  end
end

class Janken
# definition de la classe jeu qui prend deux variabl
  def pon(player_hand, enemy_hand)

    # janken = ["Goo", "Choki", "Par"]
     janken = ["0", "1", "2"]

    puts "la valeur saisie par player est: #{player_hand}"
    puts "le jeux de l'opposant  #{enemy_hand}"

    bb = "#{player_hand}"
    cc = "#{enemy_hand}"

    if bb == cc
        puts "jeu nul"
        puts "reprendre"
        #return false
        Action.jankenpon
    end
    puts bb
    puts cc
    if (bb == "0" && cc =="1") || (bb == "1" && cc == "2") || (bb == "2" && cc == "0")
      #|| (bb = 1 && cc = 2)
          puts "jeu gagnant"
          #return false
          Action.jankenpon
    end
    if  (bb == "0" && cc == "2") || (bb == "1" && cc == "0") || (bb == "2" && cc == "1")
        puts "perdu"
        #return false
        Action.jankenpon
    end


  end
end

class Action

  def self.jankenpon
    #Substitute the instantiated Player for the variable "player".
    player = Player.new
    # Assign an instantiation of Enemy to the variable "enemy".
    enemy = Enemy.new
    # Assign an instantiation of Janken to the variable "janken".
    janken = Janken.new

        next_game = janken.pon(player.hand, enemy.hand)

  end
end

Action.jankenpon
