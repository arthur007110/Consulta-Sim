class AddEnderecoToPaciente < ActiveRecord::Migration[7.0]
  def change
    add_reference :pacientes, :endereco, null: false, foreign_key: true
  end
end
