## Apresentação
WebApp para visualizar todos os lançamentos da SpaceX em formato de lista.

![home](https://github.com/jrbarbieri/spacex/blob/master/docs/images/home.png)

## Instalação
Este app utiliza o Ruby versão 2.6.1 ou superior. Instale utilizando o [RVM](https://rvm.io/) ou similares.

Após, faça um `git clone` do projeto para sua máquina, abra o terminal, rode o comando `bundle install` para instalar todas as dependências e inicialize-o utilizando o comando `rails server`.

## Explicando o desenvolvimento
O objetivo principal da aplicação era obter os dados de lançamentos das naves espaciais da SpaceX, onde estes dados podem ser obtidos através das APIs públicas disponíveis [aqui](https://github.com/r-spacex/SpaceX-API/blob/master/docs/v4/README.md).

Como o objetivo era basicamente organizar os dados obtidos pelas requisições, foram então admitidas algumas facilitações:
### Her
A aplicação utiliza a gem [**her**]https://github.com/remi/her). Esta gem mapeia recursos REST e os tranforma em objetos Ruby. Com esta dependẽncia o projeto não precisou criar uma abstração para realizar as requisições para a SpaceX.

### Model e Presenter
Para exibir da melhor forma os dados obtidos pela _gem her_, foi criado o model `Launch` para realizar um memoize das únicas rotas da SpaceX que o projeto utiliza (o endpoint `/launch`).

A partir disso, o controller `HomeController` passa os dados através do presenter `LaunchPresenter.new(Launch)` para a view, onde assim os dados são renderizados seguindo boas práticas de implementação.
### Teste A/B
Este app está utilizando a gem [**split**](https://github.com/splitrb/split) para execução de testes A/B, seguindo o desafio proposto para criação deste app.

Você pode consultar os testes no dashboard da gem, através do path `/split` uma vez que o projeto estiver disponível no `localhost:3000`.

![home](https://github.com/jrbarbieri/spacex/blob/master/docs/images/split.png)
