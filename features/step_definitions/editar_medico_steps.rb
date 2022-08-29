medico_id = 0

Given('o medico de crm {string} existe') do |string|
  medico = Medico.new(
    nome: 'Arthur Costa',
    cpf: '12345678912',
    email: 'arthur@email.com',
    crm: '123456',
    especialidade: 'Cardiologista'
  )

  medico.save

  medico_id = medico.id
end

Given('estou na pagina de editar o medico de crm {string}') do |string|
  visit('/medicos/'+ medico_id.to_s() +'/edit')
end

When('eu preencho o campo nome do medico com {string}') do |string|
  fill_in('medico_nome', with: 'Arthur Costa')
end

When('eu preencho o campo cpf do medico com {string}') do |string|
  fill_in('medico_cpf', with: '12345678912')
end

When('eu preencho o campo crm do medico com {string}') do |string|
  fill_in('medico_crm', with: '123456')
end

When('eu preencho o campo email do medico com {string}') do |string|
  fill_in('medico_email', with: 'arthur@email.com')
end

When('eu preencho o campo especialidade com {string}') do |string|
  fill_in('medico_especialidade', with: 'Cardiologista')
end

When('eu clico no botao update medico') do
  click_button
end

Then('eu vejo uma mensagem informando que o medico foi atualizado com sucesso') do
  assert page.has_content?('Medico was successfully updated.')
end
