class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.date :dataVenda
      t.float :total

      t.timestamps
    end
  end
end
