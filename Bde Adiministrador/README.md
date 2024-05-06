# Exercício de BDE com Delphi 7
- Definindo o Local de Armazenamento da Tabela:
Primeiro, você precisa estabelecer o local onde deseja armazenar as informações da tabela. Isso envolve a definição de um diretório ou caminho onde os dados serão salvos. Para fazer isso, você geralmente utiliza o componente TDatabase para especificar o caminho do banco de dados.
- Utilizando o BDEAdministrator para Criar a Tabela:
O BDEAdministrator é uma ferramenta que faz parte do Borland Database Engine (BDE). Você pode usá-lo para criar a estrutura da tabela e definir seu local de armazenamento. Após configurar a tabela no BDEAdministrator, lembre-se de salvá-la e fechá-la.
- Localizando a Tabela na Aba BDE do Delphi 7:
Após ter criado a tabela e configurado sua localização no BDEAdministrator, você poderá acessá-la no ambiente de desenvolvimento do Delphi 7. A tabela estará disponível na aba BDE do Delphi 7.
- Editando as Propriedades no Object Inspector:
No Delphi, você pode personalizar as propriedades da tabela que você criou. No Object Inspector, selecione o componente TTable correspondente à tabela que você configurou no BDEAdministrator. Em seguida, defina a propriedade TableName com o nome da tabela que você criou. Além disso, configure a propriedade DatabaseName com o nome do arquivo ou caminho criado anteriormente para o banco de dados.
- Comunicando com a Tabela usando o DataSource na Aba Data Access:
Para permitir que sua interface de usuário interaja com os dados da tabela, você precisará conectar a tabela a um componente que pode exibir e manipular os dados. Isso é geralmente feito usando um componente TDataSource. Na aba Data Access do Delphi 7, configure o TDataSource para se ligar à tabela, facilitando assim a interação entre a interface do usuário e os dados da tabela.
