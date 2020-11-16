class BuscaCep
  include Capybara::DSL

  def acessar_url(url)
    visit url
  end

  def endereco_ou_cep
    find("input[name=relaxation]")
  end

  def buscar
    find("input[value=Buscar]").click
  end

  def qtd_resultados
    table = find(".tmptabela tbody")
    page1 = table.all("tr").count
    clicar_em_proximo
    page2 = table.all("tr").count
    clicar_em_proximo
    page3 = table.all("tr").count

    total = page1.to_i + page2.to_i + page3.to_i - 3
    print total
  end

  def aviso_nao_encontrado
    content = find(".ctrlcontent")
  end

  def resultados_grid
    table = find(".tmptabela")
    table.find("tbody tr", text: "Avenida Adolpho Massaglia")
  end

  def clicar_em_proximo
    btnProximo = all("a", text: "[ Próxima ]")
    btnProximo[0].click
  end
end
