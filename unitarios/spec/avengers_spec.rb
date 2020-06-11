class AvengersHeadQuarter
    attr_accessor :list
    
    def initialize
        self.list = []
    end

    def put(avenger)
       self.list.push(avenger)
    end
end


#TDD - Desenvolvimeto guiado por testes
describe AvengersHeadQuarter do
    
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve uma lista de vingadorer' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    it 'Thor deve sero promeiro da lista' do
        hq = AvengersHeadQuarter.new
        
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o ultimo da lista' do
        hq = AvengersHeadQuarter.new
        
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'Deve conter sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Allan/)
    end

end 