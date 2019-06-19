class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def catchphrase
    "Did I do that?"
  end
  
  def say_that_thing_you_say
    urkel = Character.new(:name => "Steve Urkel")
    urkel.catchphrase = "Did I do that?"
    urkel.save
    expect(Character.find_by(:id => urkel.id).catchphrase).to eq(urkel.catchphrase)

    expect(urkel.say_that_thing_you_say).to eq("#{urkel.name} always says: #{urkel.catchphrase}")
  end
  
end