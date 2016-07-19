class Boards
  attr_accessor :user_ships,
                :user_shots,
                :comp_ships,
                :comp_shots

  def initialize
    @user_ships = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    @comp_ships = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    @user_shots = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    @comp_shots = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
  end

  def add_user_small_ship(user_input)
    @user_ships.each do |row|
      if row[0] == user_input[0] && row[0] == user_input[2]
        row[user_input[1].to_i] << "S"
        row[user_input[3].to_i] << "S"
      elsif row[0] == user_input[0]
        row[user_input[1].to_i] << "S"
      elsif row[0] == user_input[2]
          row[user_input[3].to_i] << "S"
      end
    end
      @user_ships
  end

  def add_user_medium_ship(user_input)
    @user_ships.each do |row|
      if row[0] == user_input[0] && row[0] == user_input[2] && row[0] == user_input[4]
        row[user_input[1].to_i] << "M"
        row[user_input[3].to_i] << "M"
        row[user_input[5].to_i] << "M"
      elsif row[0] == user_input[0]
        row[user_input[1].to_i] << "M"
      elsif row[0] == user_input[2]
          row[user_input[3].to_i] << "M"
      elsif row[0] == user_input[4]
          row[user_input[5].to_i] << "M"
      end
    end
      @user_ships
  end

  # def add_comp_small_ship(((65 + rand(4)).chr + (rand(4) + 1).to_s) + ((65 + rand(4)).chr + (rand(4) + 1).to_s))
  #   @comp_ships.each do |row|
  #     if row[0] == user_input[0] && row[0] == user_input[2]
  #       row[user_input[1].to_i] << "X"
  #       row[user_input[3].to_i] << "X"
  #     elsif row[0] == user_input[0]
  #       row[user_input[1].to_i] << "X"
  #     elsif row[0] == user_input[2]
  #         row[user_input[3].to_i] << "X"
  #     end
  #   end
  #     @comp_ships
  # end


end
