# Padrões de Projeto (Design Patterns)

Atualmente não se concebe um processo de desenvolvimento de software sério sem a utilização da orientação a objetos, pois esta permite agregar qualidades importantes aos sistemas desenvolvidos sob seus paradigmas, como a extensibilidade e a reusabilidade. 

Os padrões de projetos tornam mais fácil reutilizar soluções e arquiteturas bem sucedidas para construir softwares orientados a objetos de forma flexível e fácil de manter.

Em software, os padrões de projeto não são classes nem objeto. Em vez disso, os projetistas usam esses padrões para construir conjuntos de classes e objetos.

[Se quiser se aprofundar](https://www.devmedia.com.br/conheca-os-padroes-de-projeto/957)

Eu poderia ficar aqui falando o que muitos ja falaram, porem meu objetivo não é este. Sendo assim leia conteudos na internet sobre Design patterns, se não entendeu leia de novo e de novo e de novo, procure sempre trocar o autor.

Aqui eu quero mostrar alguns padrões na pratica, nem sempre é facil fazer isto de uma forma que fique fácil de se entender mas vou tentar.

Existem vários padrões arquitetônicos disponíveis e você pode usar mais de um em seu projeto, já que cada um pode se adequar melhor a um cenário específico.

## MVC

Como um novo desenvolvedor iOS, há uma enorme quantidade de informações que você precisa dominar: uma nova linguagem, novos frameworks e APIs e o padrão arquitetônico recomendado pela Apple Model-View-Controller, ou MVC para abreviar.
MVC [Se quiser se aprofundar](https://github.com/MoacirParticular/Padroes-de-Projeto/tree/main/Padroes/MVC)



## MVVM-C
Atualmente este padrão é exigido como base do seu conhecimento.

> O MVVM-C ajuda na separação de preocupações e permite que o teste e a implementação sejam... muito melhores do que o MVC. Agora, nada é perfeito, mas é perfeitamente possível ter uma variedade de dependências que podem levar a inicializadores grandes e pesados.

>_Uma solução possível para isso é o uso do Padrão de Fábrica e o uso da Injeção de Dependência para testar as classes relevantes._

A ideia aqui é ter um esqueleto básico para a arquitetura MVVM-C. Não iremos neste exemplo usar Factory, nem Independency Injection. 

>MVVM-C quer dizer Model-View-View-Model with Coordinator

#### Coordinator
Este é o cerne da questão, porque o coordenador controla o fluxo do aplicativo. 
Se um UIViewController deseja abrir outro UIViewController, deve fazê-lo através do Coordinator.

>_Voce pode [acompanhar AQUI, baixar](https://github.com/MoacirParticular/Login-MVVM-C) o repositorio de exemplo e acompahar pelas classes implementadas nele._


