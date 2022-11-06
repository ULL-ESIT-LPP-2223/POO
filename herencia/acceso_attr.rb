class Person
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

p = Person.new("Nombre Apellido")
puts p.name

p.name = "Nombre Primer-Apellido"
puts p.name