paciente_id = 0

Given('o paciente de cpf {string} existe') do |string|
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
  paciente.save

  paciente_id = paciente.id
end

Given('estou na pagina de editar o paciente de cpf {string}') do |string|
  print(paciente_id)
  visit('/pacientes/'+ paciente_id.to_s() +'/edit')
end

When('eu clico no botao update paciente') do
  click_button
end

Then('eu vejo uma mensagem informando que o paciente foi atualizado com sucesso') do
  save_and_open_page
  assert page.has_content?('Paciente was successfully updated.')
end
