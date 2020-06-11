class Veiculo
    attr_accessor :nome, :marca, :modelo
    
    def initialize(nome, marca, modelo) 
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} esta pronto para iniciar o trageto!"
    end

    def buzinar
        puts 'Beep! Beep!'

    end

end


class Carro < Veiculo
    def dirigir
        puts "#{nome} iniciando o trageto"
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trageto"
    end
end

palio = Carro.new('Palio', 'Fiat', 'Economy')
palio.ligar
palio.buzinar
palio.dirigir

moto = Moto.new('Bis', 'Honda', '125ex')
moto.ligar
moto.buzinar
moto.pilotar    