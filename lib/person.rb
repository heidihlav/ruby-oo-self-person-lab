require 'pry'

class Person 
  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      return 10  
   elsif @happiness.between?(1,9)
       return @happiness
   else
      @happiness < 0
      return 0
    end
  end


  def hygiene
    if @hygiene > 10
      return 10  
   elsif @hygiene.between?(1,9)
       return @hygiene
   else
      @hygiene < 0
      return 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene += 4)    
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(@happiness += 2)    
    self.hygiene=(@hygiene -= 3)    
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness=(@happiness += 3)    
    person.happiness += 3
    "Hi #{person.name}! It's #{@name}. How are you?" 
  end

  def start_conversation(person, topic)
    if topic == "politics"
      "blah blah partisan blah lobbyist"
      person.happiness -= 2

    end 
  end



end

      # binding.pry
#          binding.pry
