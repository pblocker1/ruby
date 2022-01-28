class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
  end

  # instance methods with the use of instance variables ... ie the @
  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  # overriding the to_s method
  def to_s
    "#{@production_number} has the username #{@username}. It is made from the #{self.class} class"
  end

  # getter methods
  def username
    @username
  end

  def password
    @password
  end

  def production_number
    @production_number
  end

  # setter methods
  def password=(password)
    @password = password
  end
end

phone = Gadget.new
laptop = Gadget.new

p phone.username

# USE OF THE SETTER METHOD
p phone.password = ('best password ever')


shiny = Gadget.new
flashy = Gadget.new

# object aliases
glossy = shiny

# instance variables are variables that belong to a specific object.
# They define the objects properties or attributes
# They make up the objects state. They begin with the @ symbol and is called a sigil

# calling of the instance method
puts phone.info

# overriding the .to_s method
puts phone.to_s