class Carta
    attr_accessor :numero, :pinta
    
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
        
end
cartas = []
pintas = ['C','D','E','T']
puts "["
5.times do |i|
    cartas.push(Carta.new(Random.rand(1..13), pintas.sample))
    puts "\tnumero => #{cartas[i].numero}, \tpinta => #{cartas[i].pinta}"
    if i >= 4
        print "]"
    end
end