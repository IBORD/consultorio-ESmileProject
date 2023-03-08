class CreateDentista < ActiveRecord::Migration[7.0]
  def change
    create_table :dentista do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :especialidade

      t.timestamps
    end
  end
end
