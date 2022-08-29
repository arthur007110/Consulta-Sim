Given('o paciente de cpf {string} existe') do |cpf|
  paciente = Paciente.new(
    nome: 'Arthur Costa',
    nascimento: '2000-01-18',
    cpf: cpf,
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
end

Given('estou na pagina de editar o paciente de cpf {string}') do |cpf|
  paciente = Paciente.find_by('cpf = ' + cpf)
  visit('/pacientes/'+ paciente.id.to_s() +'/edit')
end

When('eu clico no botao update paciente') do
  click_button
end

Then('eu vejo uma mensagem informando que o paciente foi atualizado com sucesso') do
  assert page.has_content?('Paciente was successfully updated.')
end
