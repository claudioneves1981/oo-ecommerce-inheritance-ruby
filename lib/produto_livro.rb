class ProdutoLivro < Produto
    attr_accessor :autor, :genero, :paginas
    def initialize(nome:, preco:, estoque:, autor:, genero:,
                   paginas:, quantidade: 0)
      super(nome: nome, preco: preco,
        estoque: estoque)
      @autor = autor
      @genero = genero
      @paginas = paginas
      
    end

  def adiciona
    adiciona_estoque(@quantidade)
  end

  def remove
    remove_estoque(@quantidade)
  end
end