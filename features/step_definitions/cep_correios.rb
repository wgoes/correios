Dado("que o usuário está na tela de busca de CEP.") do
  @busca = BuscaCep.new
  @busca.acessar_url("http://www.buscacep.correios.com.br/sistemas/buscacep/buscaCepEndereco.cfm")
end

Quando("clicar em Buscar.") do
  @busca.buscar
end

Então("deve visualizar a mensagem: {string}.") do |msg_aviso|
  msgAlert = page.driver.browser.switch_to.alert.text
  expect(msgAlert).to eql msg_aviso
end

Dado("que o usuário preencheu o campo Endereço_ou_CEP com o valor {string}.") do |endereco_ou_cep|
  @busca.endereco_ou_cep.send_keys endereco_ou_cep
end

Então("a listagem de resultados deve ser exibida com paginação.") do
end

Então("o sistema deve retornar até no máximo {int} resultados.") do |qtdeMaxima|
  expect(@busca.qtd_resultados).to eql qtdeMaxima
end

Então("deve visualizar a mensagem {string}.") do |msg_aviso|
  expect(@busca.aviso_nao_encontrado.text).to have_content msg_aviso
end

Quando("Deve visualizar o logradouro {string}.") do |logradouro|
  expect(@busca.resultados_grid.text).to have_content logradouro
end
