class CreateHorarioDeAtendimentos < ActiveRecord::Migration[7.0]
  def change
    create_table :horario_de_atendimentos do |t|
      t.string :dia_da_semana
      t.time :horario_inicio
      t.time :horario_termino
      t.references :dentista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
