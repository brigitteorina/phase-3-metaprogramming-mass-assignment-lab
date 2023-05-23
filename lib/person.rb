class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end
  end

  def self.create_accessor(attribute)
    attr_accessor attribute
  end

  ATTRIBUTES = [:name, :birthday, :hair_color, :eye_color, :height, :weight, :handed,
                :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width]

  ATTRIBUTES.each { |attribute| create_accessor(attribute) }
end


bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)
puts bob.name       
puts bob.hair_color 

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }
susan = Person.new(susan_attributes)
puts susan.name     
puts susan.height    
puts susan.eye_color
