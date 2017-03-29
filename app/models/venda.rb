class Venda < ActiveRecord::Base

	def get_preco
      @jogos = Jogo.all
        @jogos.each do |jogo|
          if jogo_id == jogo.id
            jogo.preco.to_i;
          end
        end
    end

    belongs_to :jogo
    belongs_to :cliente
end
