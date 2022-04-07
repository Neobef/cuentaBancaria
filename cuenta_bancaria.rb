class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        raise RangeError, "La cuenta debe tener 8 digitos" if numero_de_cuenta.length != 8
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta
        puts @vip == 1 ? "1-#{@numero_de_cuenta}" : "0-#{@numero_de_cuenta}"
    end

end

cuenta = CuentaBancaria.new("Fabián", '30020058', 1)
cuenta.numero_de_cuenta