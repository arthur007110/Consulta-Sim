Given('estou na pagina de cadastrar paciente') do
  visit('/pacientes/new')
end

When('eu preencho o campo nome do paciente com {string}') do |nome|
  fill_in('paciente_nome', with: nome)
end

When('eu preencho o campo cpf do paciente com {string}') do |cpf|
  fill_in('paciente_cpf', with: cpf)
end

When('eu preencho o campo nascimento do paciente com {string}') do |nascimento|
  fill_in('paciente_nascimento', with: nascimento)
end

When('eu preencho o campo email do paciente com {string}') do |email|
  fill_in('paciente_email', with: email)
end

When('eu preencho o campo logradouro com {string}') do |logradouro|
  fill_in('paciente_endereco_attributes_logradouro', with: logradouro)
end

When('eu preencho o campo bairro com {string}') do |bairro|
  fill_in('paciente_endereco_attributes_bairro', with: bairro)
end

When('eu preencho o campo cidade com {string}') do |cidade|
  fill_in('paciente_endereco_attributes_cidade', with: cidade)
end

When('eu preencho o campo cep com {string}') do |cep|
  fill_in('paciente_endereco_attributes_cep', with: cep)
end

When('eu preencho o complemento cep com {string}') do |complemento|
  fill_in('paciente_endereco_attributes_complemento', with: complemento)
end

When('eu clico no botao create paciente') do
  click_button
end

Then('eu vejo uma mensagem informando que o paciente foi cadastrado com sucesso') do
  assert page.has_content?('Paciente was successfully created.')
end
