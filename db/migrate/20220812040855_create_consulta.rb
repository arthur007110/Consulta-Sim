class CreateConsulta < ActiveRecord::Migration[7.0]
  def change
    create_table :consulta do |t|
      t.string :pacienteCpf
      t.string :medicoCpf
      t.date :data
      t.string :horario

      t.timestamps
    end
  end
end
