Given('o medico de crm {string} existe') do |crm|
  medico = Medico.new(
    nome: 'Arthur Costa',
    cpf: '12345678912',
    email: 'arthur@email.com',
    crm: crm,
    especialidade: 'Cardiologista'
  )

  medico.save
end

Given('estou na pagina de editar o medico de crm {string}') do |crm|
  medico = Medico.find_by('crm = ' + crm)
  visit('/medicos/'+ medico.id.to_s() +'/edit')
end

When('eu preencho o campo nome do medico com {string}') do |nome|
  fill_in('medico_nome', with: nome)
end

When('eu preencho o campo cpf do medico com {string}') do |cpf|
  fill_in('medico_cpf', with: cpf)
end

When('eu preencho o campo crm do medico com {string}') do |crm|
  fill_in('medico_crm', with: crm)
end

When('eu preencho o campo email do medico com {string}') do |email|
  fill_in('medico_email', with: email)
end

When('eu preencho o campo especialidade com {string}') do |especialidade|
  fill_in('medico_especialidade', with: especialidade)
end

When('eu clico no botao update medico') do
  click_button
end

Then('eu vejo uma mensagem informando que o medico foi atualizado com sucesso') do
  assert page.has_content?('Medico was successfully updated.')
end
