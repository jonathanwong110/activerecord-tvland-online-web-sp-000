class Character < ActiveRecord::Base
  belongs_to :shows
  belongs_to :actors
  
  def catchphrase
    puts "Did I do that?"
  end
  
  def say_that_thing_you_say
    character = Character.where("name = Urkel")
    character.catchphrase
  end
  
end