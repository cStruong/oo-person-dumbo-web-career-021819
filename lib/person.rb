require "pry"

class Person
 @@note = "\u266A"
 @@double_note = "\u266B"

 attr_reader :name
 attr_accessor :bank_account, :happiness, :hygiene

def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
end

def happiness=(person_happiness)
 if person_happiness > 10
   @happiness = 10
 elsif person_happiness < 0
   @happiness = 0
 else
   @happiness = person_happiness
 end
end

def hygiene=(person_hygiene)
 if person_hygiene > 10
   @hygiene = 10
 elsif person_hygiene < 0
   @hygiene = 0
 else
 @hygiene = person_hygiene
end
end

def clean?
   if @hygiene > 7
     return true
   else
     return false
 end
end

def happy?
   if @happiness > 7
     return true
   else
     return false
 end
end

def get_paid(salary)
 @bank_account += salary
 return "all about the benjamins"
end

def take_bath
 self.hygiene += 4
 return "#{@@note} Rub-a-dub just relaxing in the tub #{@@double_note}"
end

def work_out
 self.happiness += 2
 self.hygiene -= 3
 return "#{@@note} another one bites the dust #{@@double_note}"

end

def call_friend(friend)
 self.happiness += 3
 friend.happiness += 3
 return "Hi #{friend.name}! It's #{@name}. How are you?"
end

def start_conversation(friend, topic)
 if topic == "politics"
   self.happiness -= 2
   friend.happiness -= 2
   return "blah blah partisan blah lobbyist"
 elsif topic == "weather"
   self.happiness += 1
   friend.happiness += 1
   return "blah blah sun blah rain"
 else
   return "blah blah blah blah blah"
 end
end

end
