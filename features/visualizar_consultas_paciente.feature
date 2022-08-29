Feature: visualizar consultas de paciente
  As a usuario do sistema
  I want to visualizar as consultas agendadas para um paciente
  So that eu ter conhecimento das consultas agendadas para este paciente

  Scenario:
    Given o paciente de cpf '12345678912' existe
    And o medico de crm '123456' existe
    And a consulta para o dia '5000-12-21' no horario '12:30' com o medico de crm '123456' e o paciente de cpf '12345678912' existe
    And estou na pagina de visualizar o paciente de cpf '12345678912'
    Then eu vejo ao menos uma consulta para o paciente