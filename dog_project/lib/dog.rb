class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def name=(str)
        name = (str)
    end

    def breed
        @breed
    end

    def breed=(str)
        @breed = (str)
    end

    def age
        @age
    end

    def age=(num)
        @age = (num)
    end

    def bark
        @bark
    end

    def bark=(str)
        @bark = (str)
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_foods=(arr)
        @favorite_foods = (arr)
    end

    def bark
        @age > 3 ? @bark.upcase : @bark.downcase
    end

    def favorite_food?(str)
        @favorite_foods.include?(str[0].upcase + str[1..-1].downcase)
    end

end
