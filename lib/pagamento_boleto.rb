class PagamentoBoleto < Pagamento
    attr_accessor :porcentagem
    def initialize(quantidade: 0, produto: Produto.new, porcentagem: 0)
        super(quantidade: quantidade, produto: produto)
        @porcentagem = porcentagem
    end

    def desconto
    @valor = aplicar_desconto(@porcentagem)
    end


end