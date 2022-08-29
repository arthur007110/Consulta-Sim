require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'Criar medico com crm invalido' do
    medico = Medico.new(
      nome: 'Arthur Costa',
      cpf: '02345678912',
      email: 'a@a.com',
      especialidade: 'Cardiologista',
      crm: '1234567'
    )

    assert_not medico.save
  end

  test 'Criar medico valido' do
    medico = Medico.new(
      nome: 'Arthur Costa',
      cpf: '02345678912',
      email: 'a@a.com',
      especialidade: 'Cardiologista',
      crm: '123456'
    )

    assert medico.save
  end
end
