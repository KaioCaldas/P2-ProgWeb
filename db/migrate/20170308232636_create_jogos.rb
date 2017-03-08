class CreateJogos < ActiveRecord::Migration[5.0]
  def change
    create_table :jogos do |t|
      t.string :titulo
      t.string :genero
      t.string :desenvolvedora
      t.integer :ano
      t.string :plataforma
      t.float :preco
      t.integer :qtdEstoque

      t.timestamps
    end
  end
end
