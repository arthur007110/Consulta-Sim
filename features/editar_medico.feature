Feature: editar medico
  As a usuário do sistema
  I want to editar os dados de um medico
  So that eu manter o cadastro dos medicos atualizados

  Scenario: Editar medico
    Given o medico de crm '123456' existe
    And estou na pagina de editar o medico de crm '123456'
    When eu preencho o campo nome do medico com 'Arthur Costa'
    And eu preencho o campo cpf do medico com '12345678912'
    And eu preencho o campo crm do medico com '123456'
    And eu preencho o campo email do medico com 'arthur@email.com'
    And eu preencho o campo especialidade com 'Cardiologista'
    And eu clico no botao update medico
    Then eu vejo uma mensagem informando que o medico foi atualizado com sucesso