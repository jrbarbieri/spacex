## Apresentação
WebApp para visualizar todos os lançamentos da SpaceX em formato de lista.

![home](https://github.com/jrbarbieri/spacex/blob/master/docs/images/home.png)

## Instalação
Este app utiliza o Ruby versão 2.6.1 ou superior. Instale utilizando o [RVM](https://rvm.io/) ou similares.

Após, faça um `git clone` do projeto para sua máquina, abra o terminal, rode o comando `bundle install` para instalar todas as dependências e inicialize-o utilizando o comando `rails server`.

## Teste A/B
Este app está utilizando a gem [**split**](https://github.com/splitrb/split) para execução de testes A/B.

Você pode consultar os testes no dashboard da gem, através do path `/split` uma vez que o projeto estiver disponível no `localhost:3000`.

![home](https://github.com/jrbarbieri/spacex/blob/master/docs/images/split.png)
