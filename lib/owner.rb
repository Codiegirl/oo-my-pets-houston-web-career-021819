class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name
  attr_accessor :pets

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self# code goes here
  end

  def say_species
    return "I am a human."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    #pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
    #pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
    #pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end


  def play_with_cats #owner instance  because there is no self before it
      pets[:cats].each do |cat|
        cat.mood = "happy"
  end
end


  def feed_fish
      pets[:fishes].each do |fish|
        fish.mood = "happy"
  end
end

  def self.all #refers to the whole class class method
      @@all
  end

  def self.count
        @@all.length
  end

  def self.reset_all
        @@all.clear
  end

  def sell_pets
    @pets.each do |species, pet_arr|
      pet_arr.each do |pet|
        pet.mood = "nervous"

      end
    end
    
    @pets = []


  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end

