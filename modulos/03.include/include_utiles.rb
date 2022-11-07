require 'pry'
require 'utiles'

class Person
    include Utiles
    
    def initialize(name, age)
        set_name(name)
        @age = age
    end
    
    def name
        @first_name + ' ' + @last_name
    end
    
    def age
        @age
    end

    def set_name(name)
        first_name, last_name = name.split(/\s+/)
        set_first_name(first_name)
        set_last_name(last_name)
    end
    
    def set_first_name(name)
        @first_name = name
    end
    
    def set_last_name(name)
        @last_name = name
    end
    
    def age_difference_with(other)
        (self.age - other.age).abs
    end
    
    public :name, :set_name, :age_difference_with
    protected :age
    private :set_first_name, :set_last_name
end


binding.pry

juan = Person.new("Juan Bello", 20)
puts juan.name
puts juan.class_name
juan.algo

pepe = Person.new("Jose Feo", 25)
puts pepe.name
puts pepe.class_name
pepe.algo

puts pepe.age_difference_with(juan)

