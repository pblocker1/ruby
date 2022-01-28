# Shortcut to writing out all the getter and setter methods

class Gadget_Accessor
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget_Accessor.new
p phone.username
p phone.username = 'new user'