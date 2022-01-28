module LengthConversions
  WEBSITE = 'https://www.onlineconversion.com/length_common.htm'    

  def self.miles_to_feet(miles)
    mile * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end
end

puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)