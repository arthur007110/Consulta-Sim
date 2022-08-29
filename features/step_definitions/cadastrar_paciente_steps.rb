Given('estou na pagina de cadastrar paciente') do
  visit('/pacientes/new')
end

When('eu preencho o campo nome do paciente com {string}') do |string|
  fill_in('paciente_nome', with: 'Arthur Costa')
end

When('eu preencho o campo cpf do paciente com {string}') do |string|
  fill_in('paciente_cpf', with: '12345678912')
end

When('eu preencho o campo nascimento do paciente com {string}') do |string|
  fill_in('paciente_nascimento', with: '2001-10-30')
end

When('eu preencho o campo email do paciente com {string}') do |string|
  fill_in('paciente_email', with: 'arthur@email.com')
end

When('eu preencho o campo logradouro com {string}') do |string|
  fill_in('paciente_endereco_attributes_logradouro', with: 'Rua x de novembro')
end

When('eu preencho o campo bairro com {string}') do |string|
  fill_in('paciente_endereco_attributes_bairro', with: 'Boa vista')
end

When('eu preencho o campo cidade com {string}') do |string|
  fill_in('paciente_endereco_attributes_cidade', with: 'Garanhuns')
end

When('eu preencho o campo cep com {string}') do |string|
  fill_in('paciente_endereco_attributes_cep', with: '12345678')
end

When('eu preencho o complemento cep com {string}') do |string|
  fill_in('paciente_endereco_attributes_complemento', with: 'Complemento completo')
end

When('eu clico no botao create paciente') do
  click_button
end

Then('eu vejo uma mensagem informando que o paciente foi cadastrado com sucesso') do
  assert page.has_content?('Paciente was successfully created.')
end
