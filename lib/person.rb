# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(val)
      if val < 0
        @happiness = 0
      elsif val > 10
        @happiness = 10
      else 
        @happiness = val
      end
    end

    def hygiene=(val)
      if val < 0
        @hygiene = 0
      elsif val > 10
        @hygiene = 10
      else
        @hygiene = val
      end
    end

    def happy?
      if happiness > 7
        true
      else
        false
      end
    end

    def clean?
      if hygiene > 7
        true
      else
        false
      end
    end

    def get_paid(amt)
      @bank_account += amt
      "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4
      '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
      self.hygiene -= 3
      self.happiness +=2
      "♪ another one bites the dust ♫"
    end

    def call_friend(person)
      self.happiness += 3
      person.happiness +=3
      "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
    #   case topic
    #   when "politics"
    #     happiness -= 2
    #     person.happiness -= 2
    #     'blah blah partisan blah lobbyist'
    #   when "weather"
    #     happiness += 1
    #     person.happiness += 1
    #     'blah blah sun blah rain'
    #   else
    #     'blah blah blah blah blah'
    #   end
    # end
      if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        'blah blah partisan blah lobbyist'
      elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        'blah blah sun blah rain'
      else
        'blah blah blah blah blah'
      end
    end

end
# binding.pry

