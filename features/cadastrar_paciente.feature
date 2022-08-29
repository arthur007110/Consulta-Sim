Feature: Cadastrar paciente
  As a usuario do sistema
  I want to cadastrar, editar um novo paciente no sistema
  So that eu possa manter os registros dos paciente atualizados

  Scenario: Cadastrar paciente
    Given estou na pagina de cadastrar paciente
    When eu preencho o campo nome do paciente com 'Arthur Costa'
    And eu preencho o campo cpf do paciente com '12345678912'
    And eu preencho o campo nascimento do paciente com '2001-10-30'
    And eu preencho o campo email do paciente com 'arthur@email.com'
    And eu preencho o campo logradouro com 'Rua x de novembro'
    And eu preencho o campo bairro com 'boa vista'
    And eu preencho o campo cidade com 'garanhuns'
    And eu preencho o campo cep com '55555555'
    And eu preencho o complemento cep com 'complemento completo'
    And eu clico no botao create paciente
    Then eu vejo uma mensagem informando que o paciente foi cadastrado com sucesso