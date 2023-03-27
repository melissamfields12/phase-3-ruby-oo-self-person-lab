# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account 
    attr_writer :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness
        @happiness.clamp(0, 10)
    end

    def hygiene
        @hygiene.clamp(0, 10)
    end

    def happy?
        if @happiness > 7
            true
        elsif @happiness <= 7
            false
    end
end

    def clean?
        if @hygiene > 7
            true
        elsif @hygiene <= 7
            false
        end
    end

    def get_paid(amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end



end
