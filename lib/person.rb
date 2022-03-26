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


  # def bank_account
  #   @balance = 25
  # end

  # def clean?
  #   @hygiene > 7
  # end

  # def happy?
  #   @happiness > 7
  # end

  # def call_friend(person)
  #   @happiness += 3
  #   person.happiness += 3
  # end



end

      # binding.pry
      # binding.pry
