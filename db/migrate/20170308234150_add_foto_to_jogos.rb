class AddFotoToJogos < ActiveRecord::Migration[5.0]
  def change
    add_column :jogos, :foto, :string
  end
end
