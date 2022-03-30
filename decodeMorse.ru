$morseCode = 'Hello'

class Decode
    def initialize(name)
        @name = name
    end
    def print_code
        puts "#$morseCode #@name"
    end
end