class Fish
  attr_reader :name
  attr_accessor :mood
    def initialize(name)
      @name = name
      @mood = "nervous"
    end

    ##def name=(name) #setter
      #@name = name
    #end

    #def name #getter
      #@name
    #end

    #def mood=(mood)
      #@mood = mood
    #end

    #def mood
      #@mood
    #end
  end
