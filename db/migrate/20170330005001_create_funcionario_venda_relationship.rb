class CreateFuncionarioVendaRelationship < ActiveRecord::Migration[5.0]
  def change
    change_table :vendas do |t|
      t.references :funcionario, foreign_key: true
    end
  end
end
