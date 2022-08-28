require "test_helper"

class ConsultumTest < ActiveSupport::TestCase

  test 'Criar consulta correta' do
    paciente = Paciente.new(
      nome: 'Arthur Costa',
      nascimento: '2000-01-18',
      cpf: '12345678912',
      email: 'a@a.com'
    )

    endereco = Endereco.new(
      cep: '12345123',
      cidade: 'Garanhuns',
      bairro: 'Boa vista',
      logradouro: 'Praça jose',
      complemento: 'complemento'
    )
    paciente.endereco = endereco
    assert paciente.save

    medico = Medico.new(
      nome: 'Arthur Costa',
      cpf: '02345678912',
      email: 'a@a.com',
      especialidade: 'Cardiologista',
      crm: '123456'
    )
    assert medico.save

    consulta = Consultum.new(
      horario: '12:30',
      data: '2500-01-18',
      paciente_id: paciente.id,
      medico_id: medico.id
    )
    assert consulta.save
  end

  test 'Criar consulta com horario formatado incorretamente' do
    paciente = Paciente.new(
      nome: 'Arthur Costa',
      nascimento: '2000-01-18',
      cpf: '12345678912',
      email: 'a@a.com'
    )

    endereco = Endereco.new(
      cep: '12345123',
      cidade: 'Garanhuns',
      bairro: 'Boa vista',
      logradouro: 'Praça jose',
      complemento: 'complemento'
    )
    paciente.endereco = endereco
    assert paciente.save

    medico = Medico.new(
      nome: 'Arthur Costa',
      cpf: '02345678912',
      email: 'a@a.com',
      especialidade: 'Cardiologista',
      crm: '123456'
    )
    assert medico.save

    consulta = Consultum.new(
      horario: '12-30',
      data: '2500-01-18',
      paciente_id: paciente.id,
      medico_id: medico.id
    )
    assert_not consulta.save
  end
end
