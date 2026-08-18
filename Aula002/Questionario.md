1. A genealogia das linguagens não é uma escada de progresso.

A evolução das linguagens não ocorre de forma linear, em que uma linguagem nova simplesmente substitui a anterior. Muitas linguagens continuam sendo usadas durante décadas enquanto suas ideias são aproveitadas por outras. Dois fatores históricos importantes são: o investimento já feito em programas, bibliotecas e profissionais, que dificulta abandonar uma linguagem, e as necessidades de novos domínios, que levam os projetistas a aproveitar características existentes e adaptá-las. Fortran, por exemplo, continuou relevante mesmo depois do surgimento de linguagens mais modernas.

2. Por que Plankalkül é relevante?

Mesmo não tendo sido implementada quando foi criada, Plankalkül é importante porque antecipou vários conceitos que só se tornariam comuns anos depois. Entre eles estão arrays, registros estruturados e expressões semelhantes a assertions, além de tipos numéricos e estruturas de controle.

Um exemplo importante são as assertions, pois permitem indicar condições que devem ser verdadeiras em determinada parte do programa. Isso ajuda a raciocinar sobre a correção do algoritmo e facilita a identificação de erros.

6. Três contribuições de ALGOL 60.

Três contribuições importantes foram:

Estrutura de blocos e escopo local, permitindo organizar melhor programas;
Recursão, permitindo que uma função chamasse a si própria;
BNF para descrição formal da sintaxe, que influenciou a maneira de especificar linguagens posteriores.

ALGOL 60 mostra que influência técnica não é a mesma coisa que sucesso comercial. Ela não dominou o mercado, mas seus conceitos apareceram em diversas linguagens posteriores. Fortran, por exemplo, já tinha uma grande base instalada, além de forte apoio da IBM, enquanto ALGOL enfrentava problemas como ausência de uma especificação padronizada de entrada e saída.

7. COBOL e o processamento comercial.

COBOL foi criada pensando em aplicações empresariais, como folha de pagamento, contabilidade e processamento de grandes registros. Como seu público incluía pessoas da área administrativa, buscou utilizar comandos próximos do inglês, tornando os programas mais fáceis de ler, mesmo que isso os deixasse mais extensos.

Os registros hierárquicos também combinavam muito bem com dados comerciais, como cliente, endereço, compras e pagamentos. FLOW-MATIC, desenvolvida sob liderança de Grace Hopper, influenciou diretamente essa ideia de utilizar linguagem semelhante ao inglês para processamento de dados.

9. APL, SNOBOL e SIMULA 67.

APL: direcionada principalmente a cálculos e manipulação de arrays. Sua contribuição duradoura foi mostrar o poder de operações aplicadas diretamente a estruturas inteiras de dados, influenciando a programação orientada a arrays.

SNOBOL: direcionada ao processamento de textos e cadeias de caracteres. Destacou-se pelos mecanismos avançados de casamento de padrões.

SIMULA 67: nasceu para simulações, mas introduziu conceitos como classes, objetos e abstração de dados, tornando-se uma das principais origens históricas da programação orientada a objetos.

12. Pequena base Prolog.

Podemos representar em linguagem natural:

Fato 1: Ana é mãe de Bruno.
Fato 2: Bruno é pai de Carla.
Regra: Uma pessoa X é avó de Z se X é mãe de Y e Y é pai de Z.
Consulta: Ana é avó de Carla?

A resposta seria verdadeira porque o sistema pode combinar os dois fatos com a regra e inferir uma informação que não estava armazenada diretamente. É isso que diferencia programação lógica de um simples banco de dados: além de guardar informações, Prolog utiliza regras e resolução lógica para deduzir novas relações.

13. Ada e sistemas críticos.

Ada foi desenvolvida a partir de um grande conjunto de requisitos e buscou oferecer elevada confiabilidade. Sua disciplina de tipos ajuda a detectar utilizações incorretas de dados; os pacotes permitem separar interfaces e esconder detalhes de implementação; e os recursos de concorrência, como tarefas, permitem representar atividades que precisam ocorrer simultaneamente. Ada também possui tratamento estruturado de exceções.

Essas características são importantes em sistemas críticos, como aplicações militares, aviação e controle, pois nesses ambientes um erro de software pode ter consequências graves.

15. Java e a mudança de contexto.

Java foi criada inicialmente para equipamentos eletrônicos e sistemas embarcados, não especificamente para a Web. Essa primeira aplicação não obteve o sucesso esperado. Quando a Web cresceu, porém, suas características passaram a atender uma nova necessidade.

A possibilidade de utilizar uma representação intermediária executável em diferentes plataformas e o desenvolvimento dos applets ajudaram a tornar Java conhecida. Isso mostra que uma linguagem pode ser reposicionada quando surge um novo ambiente tecnológico que valoriza características que antes não eram tão importantes.

17. Duas decisões de C#.

Uma decisão foi melhorar os enum de C++. Em C++, enums podem ter uma relação mais livre com números inteiros. C# restringiu conversões implícitas, aumentando a segurança de tipos.

Outra decisão foi introduzir os delegates. Eles cumprem funções semelhantes aos ponteiros para funções de C++, mas com verificação de tipos e integração ao modelo orientado a objetos. Podem ser usados em eventos e callbacks. Em Java, funções semelhantes tradicionalmente eram realizadas usando interfaces.

Assim, C# tentou manter recursos considerados úteis de C/C++, mas oferecendo mecanismos mais seguros dentro do ambiente.NET.

18. XSLT x JSP.

No XSLT, a entrada normalmente é um documento XML mais um documento XSLT contendo as regras. O processador procura padrões, aplica templates e produz outro documento, que pode ser XML, HTML ou texto.

No JSP, a entrada é uma página solicitada pelo navegador contendo principalmente HTML combinado com Java ou elementos JSTL. O servidor transforma essa página em um servlet, executa o processamento e normalmente envia HTML ao navegador.

As duas são híbridas porque utilizam elementos de marcação, mas também permitem operações típicas de programação, como condições, repetições, seleção e transformação de dados.