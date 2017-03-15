class AtoVenda < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :vendas, :jogos
  	add_column :vendas, :jogo_id, :integer
  	add_foreign_key :vendas, :clientes
  	add_column :vendas, :cliente_id, :integer
  end
end
