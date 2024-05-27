Feature: edição de uma avaliação existente
As a um usuário comum logado
I want to gerenciar minhas avaliações 
So that eu possa editar uma avaliação existente

Scenario: edição de título bem sucedida de uma avaliação para um filme
Given o usuário comum "Paul McCartney" está na página "Histórico de reviews e posts"
do usuário "Paul McCartney"
And o usuário visualiza a avaliação criada sobre o conteúdo "filme" "Interstellar" 
And a avaliação tem o dado de "título" preenchido com "Melhor filme da história" 
And a avaliação tem o dado de "nota" preenchido com "10"
And a avaliação tem o dado de "crítica" preenchido com "Sem palavras para esse filme, espetacular."
When o usuário "Paul McCartney" seleciona "editar review" 
do conteúdo com dado "título" "Interstellar"  
And preenche os dados de "título" com "Segundo melhor filme da história"
And seleciona "publicar avaliação"
Then aparece uma mensagem de sucesso
And o usuário visualiza a avaliação atualizada com o dado de "título" preenchido com "Segundo melhor filme da história"