class Venda < ApplicationRecord

	def get_preco
      @jogos = Jogo.all
        @jogos.each do |jogo|
          if jogo_id == jogo.id
            jogo.preco.to_i;
          end
        end
    end
end
