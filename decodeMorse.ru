# snake_case.$morseCode = 'Hello'

class Decode
    def initialize(name)
        @name = name
    end
    def print_code
        puts "morseCode #@name"
    end

    def print_new(id)
        @id = id
        puts @id
    end
end