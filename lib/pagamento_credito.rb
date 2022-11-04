class PagamentoCredito < Pagamento
    attr_accessor :juros
    def initialize(quantidade: 0, produto: Produto.new, juros:)
        super(quantidade: quantidade, produto: produto)
        @juros = juros
    end

    def atualizar_valor
    @valor =  @valor + @valor/100*@juros
    end
end