Given('estou na pagina de agendar consulta') do
  visit('/consulta/new')
end

Given('a consulta para o dia {string} no horario {string} com o medico de crm {string} e o paciente de cpf {string} existe') do |data, horario, crm, cpf|
  paciente = Paciente.find_by('cpf = ' + cpf)
  medico = Medico.find_by('crm = ' + crm)

  consulta = Consultum.new(
    data: data,
    horario: horario,
    paciente_id: paciente.id,
    medico_id: medico.id
  )
  consulta.save
end

Given('estou na pagina de visualizar o paciente de cpf {string}') do |cpf|
  paciente = Paciente.find_by('cpf = ' + cpf)
  visit('/pacientes/' + paciente.id.to_s())
  save_and_open_page
end

Then('eu vejo ao menos uma consulta para o paciente') do
  page.has_css?('.consultumRow')
end
