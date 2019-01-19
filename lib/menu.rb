require_relative 'dish'

class Menu

    attr_reader :menu_list

  def initialize
    @menu_list = []
  end

  def add(dish_name, price, dish = Dish)
    @menu_list.push(dish.new(dish_name, price))
  end

  def to_string
    menu_to_list = ""
    @menu_list.map { |dish|
      menu_to_list << "#{dish.dish_name} at £#{sprintf('%.2f', dish.price)}\n"
    }
    return menu_to_list
  end
  # def menu
  #   {
  #     "Dough Balls" => 4.49,
  #     "Cheeseburger Dough Balls" => 5.79,
  #     "Garlic Pizza Bread" => 3.99,
  #     "Chicken Wings" => 5.99,
  #     "Mozzarella Sticks" => 4.99
  #   }
  # end
end
