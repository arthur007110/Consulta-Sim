require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test 'Criar paciente valido' do
    paciente = Paciente.new(
      nome: 'Arthur Costa',
      nascimento: '2000-01-18',
      cpf: '12345678912',
      email: 'a@a.com'
    )

    assert paciente.save
  end

  test 'Criar paciente com cpf invalido' do
    paciente = Paciente.new(
      nome: 'Arthur Costa',
      nascimento: '2000-01-18',
      cpf: '1234567891211',
      email: 'a@a.com'
    )

    assert_not paciente.save
  end
end
