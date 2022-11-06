class Saludo_abstracto
  def saludar
    puts "#{saludo} #{quien}"
  end
end

class Saludo_Castellano < Saludo_abstracto
    def saludo
        "Hola"
    end
    def quien
        "Mundo"
    end
end

class Saludo_Ingles < Saludo_abstracto
    def saludo
        "Hello"
    end
    def quien
        "World"
    end
end

Saludo_Castellano.new.saludar
Saludo_Ingles.new.saludar

  
    