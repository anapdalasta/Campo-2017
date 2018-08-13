import("publish")

local description = [[
   <table style="width:100%"><tr>
    <td style="width: 100%">Esta aplicação apresenta os principais resultados da expedição de campo realizada em 2017 pelos pesquisadores do grupo LiSS (Laboratório de investigação em Sistemas Sócio-Ambientais) associado ao INPE.
   Essa expedição de campo ocorreu no período de 24/09 a 06/07 de 2017 nas porções sudoeste do estado do Pará (Trajeto 1) e norte do estado do Mato Grosso (Trajeto 2). Os principais objetivos foram a coleta de informações referentes aos diferentes padrões de cobertura da terra, mais especificamente quanto às dinâmicas das populações e das áreas urbanizadas na Amazônia Paraense; e quanto às dinâmicas de uso da terra - estudando a importância da agricultura, pecuária e extração de seletiva para o desenvolvimento regional, bem como, obter informações sobre a utilização de mão de obra, máquinas e equipamentos e aspectos relativos à produção e a sua comercialização.<p><p> <b>Equipe:</b><br> Maria Isabel Sobral Escada, Silvana Amaral, Adriana Affonso, Afonso Oliveira, Ana Paula Dal'Asta, Anielli de Souza, Danilo Avancini Rodrigies, Gabriel Crivellaro, Lidiane Costa, Mateus Macul, Vinicius Capanema </td>
    <tr>

<tr>
<table style="width:100%"><tr>
<td style="width: 100%" align="left"> <p><p> <b>Apoio</b><br> <img src="Apoio2.png"/></td>
</tr></table>
   ]]

Application{
	project = "campo17.tview",
	description = description,
	clean = true,
	output = "App_campo2017a",
	points = View{
		download = true,
		description = "Pontos coletados durante expedição de campo (2017).",
		select = {"catpont", "tipo"},
		icon = {"a4_blu.png", "a3_ver.png"},
		label = {"Trajeto1","Trajeto2"},
        report = function(cell)
			local mreport = Report{
				title = cell.catpont,
                author = "LiSS (2017)"
              }

           if cell.tip1 == 1 then
				mreport:addText(" "..cell.CLASSE.." ")
           elseif cell.tip1 == 2 then
				mreport:addText(" "..cell.CLASSE.." ")

           end

              mreport:addImage(cell.catpont..".JPG")

			 return mreport
		end
   }

}
