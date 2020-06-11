
class ContaCorrente
    attr_accessor :saldo, :mensagem

     
    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > 700.00)
            self.mensagem = 'Limite maximo por saque é de R$ 700'
        else
            self.saldo -= valor
        end
    end

end

describe ContaCorrente do
    
    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200)                
            end
            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
                @conta = ContaCorrente.new(0.00)
                @conta.saca(100)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'meu saldo permanececom zeros' do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'quando o saque é insuficiente' do
            before(:all) do
                @conta = ContaCorrente.new(500.00)
                @conta.saca(501.00)
            end
            it 'vejo mensagem' do
                expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'meu saldo permanece conforme o valor inicial' do
                expect(@conta.saldo).to eql 500.00
            end
        end

    end

end