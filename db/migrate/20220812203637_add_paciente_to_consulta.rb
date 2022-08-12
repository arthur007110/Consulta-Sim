class AddPacienteToConsulta < ActiveRecord::Migration[7.0]
  def change
    add_reference :consulta, :paciente, null: false, foreign_key: true
  end
end
