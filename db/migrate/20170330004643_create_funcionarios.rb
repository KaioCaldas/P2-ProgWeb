class CreateFuncionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :endereco
      t.string :email

      t.timestamps
    end
  end
end
