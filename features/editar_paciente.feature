Feature: editar paciente
  As a usuario do sistema
  I want to editar os dados de um medico
  So that eu manter o cadastro dos pacientes atualizados

  Scenario: Editar paciente
    Given o paciente de cpf '12345678912' existe
    And estou na pagina de editar o paciente de cpf '12345678912'
    When eu preencho o campo cpf do paciente com '12345678912'
    And eu preencho o campo nascimento do paciente com '2001-10-30'
    And eu preencho o campo email do paciente com 'arthur@email.com'
    And eu preencho o campo logradouro com 'Rua x de novembro'
    And eu preencho o campo bairro com 'boa vista'
    And eu preencho o campo cidade com 'garanhuns'
    And eu preencho o campo cep com '55555555'
    And eu preencho o complemento cep com 'complemento completo'
    And eu clico no botao update paciente
    Then eu vejo uma mensagem informando que o paciente foi atualizado com sucesso
