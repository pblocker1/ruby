class Gadget_Parameters
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password
  
  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..999)}"
  end
end
  
phone = Gadget_Parameters.new('myusername','mypassword')
p phone.username
