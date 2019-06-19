class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def catchphrase
    "Did I do that?"
  end
  
  def say_that_thing_you_say
    urkel = Character.new(:name => "Steve Urkel")
    catchphrase
  end
  
end