class CriarRelacionamentos < ActiveRecord::Migration[5.0]
  def change
    change_table :vendas do |t|
      t.references :cliente, foreign_key: true
      t.references :jogo, foreign_key: true
    end
  end
end
