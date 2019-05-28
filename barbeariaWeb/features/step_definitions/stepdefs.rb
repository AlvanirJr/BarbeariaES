Given("Estou na pagina de novo usuario") do
  visit '/usuarios/new'
  expect(page).to have_current_path('/usuarios/new')
end

When("Eu crio uma conta com {string},{string},{string},{string} e {string}") do |nome, sobrenome, cpf, senha, contato|
  fill_in 'usuario[nome]', :with => nome
  fill_in 'usuario[sobrenome]', :with => sobrenome
  fill_in 'usuario[cpf]', :with => cpf
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[contato]', :with => contato
end

When("Clico em criar usuario") do
  click_button 'Create Usuario'
end

Then("Eu vejo uma tela com a mensagem de sucesso e meus dados de novo usuario.") do
  page.has_no_content?('Usuario was successfully created.')
end




Given("Estou na pagina de novo endereco") do
  visit '/enderecos/new'
  expect(page).to have_current_path('/enderecos/new')
end

When("Eu crio um endereco com {string},{string} e {string}") do |rua, bairro, numero|
  fill_in 'endereco[rua]', :with => rua
  fill_in 'endereco[bairro]', :with => bairro
  fill_in 'endereco[numero]', :with => numero
end

When("Clico em criar endereco") do
  click_button 'Create Endereco'
end

Then("Eu vejo uma tela com a mensagem de sucesso e os dados do endereco.") do
  page.has_no_content?('Endereco was successfully created.')
end


Given("Estou na pagina de nova barbearia") do
  visit '/barbearia/new'
  expect(page).to have_current_path('/barbearia/new')
end

When("Eu crio uma barbearia com {string},{string}, {string} e {string}") do |nome, contato, user_id, endereco_id|
  fill_in 'barbearium[nome]', :with => nome
  fill_in 'barbearium[contato]', :with => contato
  fill_in 'barbearium[user_id]', :with => user_id
  fill_in 'barbearium[endereco_id]', :with => endereco_id
end

When("Clico em criar barbearia") do
  click_button 'Create Barbearium'
end

Then("Eu vejo uma tela com a mensagem de sucesso e os dados da barbearia.") do
  page.has_no_content?('Barbearium was successfully created.')
end

