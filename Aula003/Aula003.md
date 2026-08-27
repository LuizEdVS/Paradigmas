# Atividade: Derivação de um Código a partir da Gramática de uma Linguagem de Programação

## 1. Linguagem escolhida e fonte da gramática

A linguagem escolhida para esta atividade foi a **linguagem C**.

Como referência foi utilizada a **ANSI C Grammar – Yacc**, disponível no site Quut. Essa gramática foi atualizada com base no padrão **ISO C de 2011 (C11)**.

**Fonte consultada:**
[ANSI C Grammar – Yacc (Quut)](https://www.quut.com/c/ANSI-C-grammar-y.html?utm_source=chatgpt.com)

A notação utilizada pela fonte é a **notação Yacc**, que possui estrutura semelhante à **BNF (Backus-Naur Form)**. Nessa notação, os nomes das regras representam símbolos não terminais, enquanto palavras reservadas, operadores, sinais de pontuação e tokens produzidos pelo analisador léxico funcionam como símbolos terminais.

Na gramática completa consultada, o símbolo inicial é `translation_unit`. Para esta atividade, entretanto, será utilizado apenas o subconjunto relacionado a um comando `for`, tomando `<statement>` como ponto inicial da derivação do trecho selecionado. Essa redução facilita a demonstração sem alterar a estrutura sintática essencial do comando.

---

## 2. Código escolhido

O trecho de código escolhido foi:

```c
for (;;) {
    break;
}
```

Esse código representa uma estrutura de repetição `for` em C. Como as três partes normalmente existentes no `for` estão vazias, a condição é considerada continuamente verdadeira. Entretanto, o comando `break` encerra o laço imediatamente.

---

## 3. Produções selecionadas

A gramática original possui diversas regras e alternativas. Para esta atividade, foram selecionadas e adaptadas apenas as produções necessárias para gerar o trecho escolhido.

```text
<statement> ::= <iteration_statement>
              | <compound_statement>
              | <jump_statement>

<iteration_statement> ::=
    "for" "(" <expression_statement>
              <expression_statement> ")" <statement>

<expression_statement> ::= ";"

<compound_statement> ::= "{" <block_item_list> "}"

<block_item_list> ::= <block_item>

<block_item> ::= <statement>

<jump_statement> ::= "break" ";"
```

Essas regras correspondem às estruturas apresentadas na gramática C consultada: um `statement` pode ser, entre outras possibilidades, um comando de repetição, um comando composto ou um comando de salto; e o `for` pode possuir dois `expression_statement` vazios antes de seu corpo.

### Significado das principais regras

**`<statement>`:** representa um comando da linguagem C. Pode assumir diferentes formas, como comandos condicionais, de repetição, compostos ou de salto.

**`<iteration_statement>`:** representa estruturas de repetição, como `while`, `do while` e `for`.

**`<expression_statement>`:** representa uma expressão seguida por ponto e vírgula. A gramática também permite que seja apenas `;`, indicando uma expressão vazia.

**`<compound_statement>`:** representa um bloco de comandos delimitado por `{` e `}`.

**`<block_item_list>` e `<block_item>`:** representam os elementos existentes dentro de um bloco.

**`<jump_statement>`:** representa comandos que alteram o fluxo normal de execução, como `break`, `continue`, `goto` e `return`.

---

## 4. Derivação do código

A derivação começa pelo símbolo não terminal `<statement>`.

```text
<statement>

⇒ <iteration_statement>

⇒ for ( <expression_statement> <expression_statement> ) <statement>

⇒ for ( ; <expression_statement> ) <statement>

⇒ for ( ; ; ) <statement>

⇒ for ( ; ; ) <compound_statement>

⇒ for ( ; ; ) { <block_item_list> }

⇒ for ( ; ; ) { <block_item> }

⇒ for ( ; ; ) { <statement> }

⇒ for ( ; ; ) { <jump_statement> }

⇒ for ( ; ; ) { break ; }
```

Eliminando os espaços utilizados apenas para facilitar a visualização da derivação e formatando o código segundo a escrita convencional da linguagem C, temos:

```c
for (;;) {
    break;
}
```

---

## 5. Símbolos terminais e não terminais

### Símbolos não terminais

Os símbolos não terminais representam categorias sintáticas que ainda precisam ser substituídas por outras produções:

```text
<statement>
<iteration_statement>
<expression_statement>
<compound_statement>
<block_item_list>
<block_item>
<jump_statement>
```

Eles não aparecem dessa forma no código final.

### Símbolos terminais

Os símbolos terminais são aqueles que permanecem no código após o término da derivação:

```text
for
(
;
;
)
{
break
;
}
```

Entre eles estão as palavras reservadas `for` e `break`, além dos sinais de pontuação `(`, `)`, `{`, `}` e `;`.

Na gramática Yacc original, palavras reservadas como `FOR` e `BREAK` aparecem como tokens reconhecidos pelo analisador léxico. A própria gramática declara esses tokens e define `translation_unit` como o símbolo inicial da gramática completa.

---

## 6. Explicação do resultado

A derivação demonstra que o trecho de código não foi construído de maneira arbitrária. Partimos de `<statement>`, que representa um comando em C, e escolhemos a produção correspondente a uma estrutura de repetição.

Em seguida, `<iteration_statement>` foi substituído pela forma do comando `for`. Os dois `<expression_statement>` foram transformados apenas em `;`, produzindo `for (;;)`. Isso é permitido pela gramática da linguagem C e representa um laço sem inicialização explícita, sem condição explícita e sem expressão de incremento.

O corpo do `for` foi transformado em um `<compound_statement>`, delimitado pelas chaves `{` e `}`. Dentro desse bloco foi utilizado um `<jump_statement>`, que finalmente produziu o comando `break;`.

Assim, após sucessivas substituições dos símbolos não terminais por suas respectivas produções, chegamos somente a símbolos terminais, formando o código:

```c
for (;;) {
    break;
}
```

Portanto, o processo mostra como uma sequência válida da linguagem C pode ser obtida a partir das regras definidas por sua gramática formal.

---

## Referência

ANSI C Grammar – Yacc. Gramática da linguagem C baseada no padrão ISO C de 2011. Quut.

[Consultar a gramática utilizada](https://www.quut.com/c/ANSI-C-grammar-y.html?utm_source=chatgpt.com)
