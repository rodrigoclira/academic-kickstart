---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Por que é importante aprender a programar na era das LLMs?"

subtitle: ""
summary: ""
authors: [me]
tags: [llm, programação]
categories: []
date: 2026-05-01T08:18:25-03:00
lastmod: 
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: "2"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []

---
<!-- https://gohugo.io/shortcodes/ -->
<!-- {{< highlight go "linenos=inline, hl_lines=3 6-8, style=emacs" >}}
package main

import "fmt"

func main() {
    for i := 0; i < 3; i++ {
        fmt.Println("Value of i:", i)
    }
}
{{< /highlight >}} -->

[Conteúdo em desenvolvimento]

Um questionamento surgiu em uma lista de e-mail que eu participo:

> Os estudantes adoram usar o Copilot, mas como fazemos com que eles aprendam a programar? Aprender conceitos de programação é difícil. Os estudantes me perguntam por que deveriam aprender o básico quando podem simplesmente pedir à IA para fazer isso.
 (versão traduzida/adaptada)

Depois de analisar algumas respostas que foram dados para o professor, fiquei com curiosidade em saber o que os próprios modelos de linguagem poderiam responder, caso fossem indagados sobre isso. Resolvi usar o Claude (a minha LLM principal) para criar um prompt que pudesse responder esse questionamento.

Prompt sugerido pelo Claude Sonnet:
> Você é um modelo de linguagem. Um estudante universitário de computação te faz a seguinte pergunta de forma genuína, não retórica: "Por que eu deveria aprender a programar se você pode escrever código por mim?" Responda de forma honesta e direta, sem evasões diplomáticas. Não diga "depende" sem justificar. Não liste vantagens genéricas de aprender programação que qualquer professor repetiria. Assuma uma posição clara sobre o valor real de aprender a programar na era dos LLMs e defenda essa posição com argumentos concretos. Se você acredita que, em alguns casos, o estudante tem razão em não se preocupar em aprender profundamente, diga isso também.

Resolvi enviar o prompt para algumas LLMs...

## Claude (Sonnet 4.6 Adaptive)

Você tem parcialmente razão, e isso é importante admitir antes de qualquer coisa.

Se o seu objetivo é construir um CRUD básico, gerar um script de automação simples ou produzir código que qualquer tutorial do YouTube cobre, sim: um LLM faz isso de forma mais rápida e com menos frustração do que você faria aprendendo do zero. Negar isso seria desonestidade pedagógica.

Dito isso, a sua pergunta contém uma premissa errada sobre o que significa "escrever código por você".

**Eu produzo texto que parece código**. Eu não entendo o sistema onde esse código vai rodar, não sei o que você realmente quer quando a sua especificação é ambígua (e ela quase sempre é), e não tenho como verificar se o que produzi está correto além de coerência superficial. Eu alucino APIs, inverto lógica condicional em casos de borda, e gero código que compila mas faz a coisa errada. O problema é que você só consegue detectar isso se souber programar.
Isso cria um problema concreto: o LLM é um multiplicador de capacidade, não um substituto de capacidade. Se você não sabe programar, eu te dou velocidade zero vezes algum fator, o que continua sendo zero. Se você sabe programar, eu te dou velocidade real com um multiplicador real.

**O segundo argumento é sobre o teto de complexidade**. Eu funciono bem no espaço do que já foi escrito, documentado e discutido na internet. Quando você chega num problema genuinamente novo, seja uma arquitetura incomum, um domínio especializado, uma otimização não trivial, a minha utilidade cai drasticamente. Nesse ponto, a pessoa que entende o que está fazendo me usa como ferramenta. A pessoa que não entende fica presa esperando que eu acerte por tentativa e erro.

**O terceiro argumento é sobre especificação**. A habilidade mais importante na era dos LLMs não é digitar código: é descrever problemas com precisão suficiente para que o código correto emerja. Isso exige pensar computacionalmente, entender estruturas de dados, raciocinar sobre complexidade, antecipar estados inválidos. Essa capacidade não se desenvolve usando LLMs como caixa preta. Ela se desenvolve programando.

Então a resposta direta é: ==aprenda a programar não para competir com LLMs em velocidade de digitação, mas para poder usá-los de forma não ingênua==. O estudante que não aprende a programar vai produzir software medíocre mais rápido. O estudante que aprende vai produzir software bom em uma fração do tempo que levaria sozinho.
Se você quer ser usuário de ferramenta, talvez não precise aprender profundamente. ==Se você quer construir coisas que importam, a programação continua sendo o que separa quem dirige de quem é passageiro==.

---
## Gemini (Gemini Pro)

Essa é, sem dúvida, a pergunta mais importante que você pode fazer no seu curso hoje. Serei absolutamente direto: a utilidade de aprender a programar mudou drasticamente, e a resposta para a sua pergunta se divide entre o que você deve ignorar e o que você precisa dominar.

Aqui está a verdade nua e crua sobre o seu papel e o meu na engenharia de software atual:

1. **Você precisa aprender para auditar minhas alucinações**: Eu não raciocino e não testo código no mundo real; eu prevejo a próxima sequência de tokens mais provável com base em padrões de treinamento. Isso significa que eu frequentemente gero códigos que parecem perfeitos, mas que introduzem falhas de segurança, vazamentos de memória, condições de corrida ou erros lógicos sutis. Se você não souber programar profundamente, não conseguirá ler, validar e debugar o que eu escrevo. Você deixará de ser um engenheiro e passará a ser um mero "copiador e colador" que entra em pânico quando o sistema quebra, porque não entende a caixa preta que construiu.

2. **O valor mudou da Sintaxe para a Arquitetura**: Eu sou excelente em escrever funções isoladas, gerar boilerplate (código repetitivo) ou implementar um algoritmo bem documentado na internet. O que eu não consigo fazer é desenhar a arquitetura de um sistema complexo do zero, entender as restrições de infraestrutura física da sua empresa ou decidir os trade-offs exatos entre latência e consistência de dados que um produto específico exige. Você aprende a programar hoje para entender as fundações de como os sistemas operam em escala, e não para decorar a sintaxe de uma linguagem.

3. **Onde você tem toda a razão em não se preocupar**: Se o seu objetivo ao entrar na faculdade era aprender a criar sites institucionais genéricos, fazer formulários CRUD simples de banco de dados, ou escrever scripts básicos para conectar duas APIs, você está certo. Não perca horas de estudo profundo nisso. Eu já faço isso mais rápido, mais barato e, muitas vezes, melhor. O trabalho do programador "tarefeiro" – aquele que apenas traduzia requisitos simples para código básico – acabou. Se você tentar competir comigo na velocidade de digitação de código genérico, você vai perder.

**O Veredito** 
Aprender a programar na era dos LLMs não é sobre se tornar um bom digitador de código. É sobre se tornar um arquiteto e um auditor. Pense em mim como o seu mestre de obras mais rápido, cego e incansável. ==Eu vou empilhar os tijolos na velocidade da luz, mas se você (o engenheiro) não souber calcular a carga, entender a física dos materiais e verificar se a planta faz sentido, o prédio que construirmos juntos vai desabar. Você precisa aprender a programar para ser o meu chefe, não o meu assistente.==

Pensando no seu futuro profissional, existe alguma área ou disciplina específica dentro da computação que você sinta que as IAs já dominaram completamente e que está te desanimando a estudar?

---
## ChatGPT (GPT‑3.5)

Vou ser direto: se a sua ambição é só “fazer código aparecer”, então você realmente não precisa aprender a programar profundamente — eu já cubro boa parte disso. Mas isso é o nível mais raso e também o mais substituível.
Agora, se você quer controle, autonomia e capacidade de resolver problemas que não vêm prontos, aí sim aprender programação continua sendo valioso — e não por motivos genéricos, mas por limites bem concretos do que eu faço:

1. Eu não entendo o seu sistema — você entende (ou deveria).
Eu gero código com base em padrões e contexto limitado. Em projetos reais, sempre falta informação: regras implícitas, exceções bizarras, decisões de negócio mal documentadas. Quem resolve isso é alguém que entende o sistema de verdade. Sem esse entendimento, você vira um “copiador de respostas plausíveis”.

2. Eu erro — _e às vezes de forma convincente_.
Não é só bug simples. Posso sugerir soluções que parecem corretas, mas quebram em escala, têm falhas de segurança ou são conceitualmente erradas. Se você não sabe programar, você não tem como auditar isso. Você só descobre quando dá problema — e aí já é tarde.

3. O difícil não é escrever código — é saber o que escrever.
A maior parte do trabalho real não é sintaxe, é decompor problemas, decidir arquitetura, escolher trade-offs. Isso não sai pronto de um prompt bem escrito se você não souber o que está pedindo. Sem base, você nem percebe que está fazendo a pergunta errada.

4. Sem base, você fica preso no “==prompt e reza==”.
Quem não programa vira dependente: tenta, ajusta prompt, tenta de novo. Quem sabe programar usa LLM como multiplicador — guia a solução, corrige rápido, adapta. A diferença de produtividade entre esses dois perfis é enorme.
Agora, sendo honesto com você:
existem cenários em que aprender profundamente não compensa.


* Se você quer só automatizar tarefas simples, scripts pessoais, protótipos rápidos → dá pra viver bem com ajuda de IA.
* Se você está indo para áreas onde código é meio, não fim (ex: design, produto, marketing) → entender o básico já é suficiente.
* Se sua meta não envolve construir sistemas complexos ou críticos → você pode terceirizar boa parte do “pensar técnico”.


Mas se você quer:

* trabalhar como engenheiro de software de verdade
* construir coisas robustas ou escaláveis
* não depender de terceiros (humanos ou IA)
* ou simplesmente ter poder real de criação técnica


então não tem atalho: você precisa entender o que está fazendo.
Resumo sem floreio:


* IA substitui quem só digita código.
* IA amplifica quem sabe programar.


Você escolhe em qual grupo quer estar.

---

## Deep Seek (DeepSeek-V4-Flash)

Vou ser direto: você tem um ponto parcialmente válido, mas a conclusão de que “não preciso aprender” é falha para a maioria dos cenários que importam.

Onde você está certo:
Se sua única meta é gerar código boilerplate, algoritmos trivialmente conhecidos (ordenar, buscar, parser de CSV) ou scripts descartáveis de colagem de APIs, eu realmente faço isso em segundos. Você não ganharia nada memorizando sintaxe de for ou recursão de Fibonacci. Nesse nicho, seu tempo é melhor gasto aprendendo a pedir do que a fazer.

Por que aprender mesmo assim?

1. **Depuração semântica**. Eu gero código que roda sem erro de sintaxe, mas com lógica errada para seu contexto — porque você não me disse que a entrada pode ter null, que a ordenação deve ser estável ou que o timeout precisa ser 3s e não 10. Quem valida isso? Você. Sem saber ler e modificar o código, você não distingue minha resposta “bonita” de uma resposta “correta”. Já vi alunos aceitarem sugestões minhas que geravam loop infinito — só perceberiam se soubessem ler o fluxo.

2. **Projetos com restrições reais**. Eu sou ótimo em código standalone. Mas em sistemas existentes com 10 mil linhas, padrões internos, bibliotecas específicas e regras de negócio bizarras, meu código muitas vezes quebra integrações. Você precisará adaptá-lo — entender herança, closures, injeção de dependência. Sem esses conceitos, você nem sabe qual parte do meu código mexer.

3. Quando eu falho (e falho feio):

* Problemas novo-suficientes (ex.: usar uma API lançada semana passada)
* Raciocínio com múltiplas fontes contraditórias (documentação vs. comportamento real)
* Código que precisa de otimização assimétrica (cache manual com trade-offs específicos)
* Segurança ofensiva (exploits). Nesses casos, eu chuto com confiança e erro. Sem programação, você fica refém do meu chute.

4. **A verdade inconveniente**: Você não está me perguntando isso por preguiça — está perguntando porque quer saber se vale o esforço. Vale, mas não para “saber syntaxe”. Vale para desenvolver o discernimento de quando confiar em mim, quando me corrigir e quando me ignorar. Isso só se constrói programando de verdade, cometendo seus próprios erros e consertando-os.

Caso específico onde você não precisa aprender profundamente:
Se seu objetivo for virar produto ou design em tech (ex.: PM de software, UI/UX, vendas técnicas) e você terá engenheiros ao lado para revisar tudo que eu gerar, OK. Aprenda o básico para ler código superficialmente e parar por aí. Mas se você quer ser engenheiro de software ou cientista de dados, não aprender é como um médico que depende da IA para dar diagnósticos sem entender fisiologia — funciona até o primeiro caso fora da curva.

**Resposta final sucinta**:
Aprenda porque eu sou uma calculadora — rápida e útil —, mas você ainda precisa saber matemática para saber se o resultado está certo e o que fazer quando a calculadora quebrar.

---

Para finalizar (até a próxima atualização desse post), gostaria de trazer um ponto levantando por um professor na discussão inicial.

> Tenho certeza de que é raro encontrar alunos que não prefiram que alguém ou alguma coisa faça o trabalho por eles, se isso for permitido. A maioria de nós, como estudantes, não percebia que o trabalho árduo que estávamos fazendo era necessário para nos tornarmos pensadores melhores, mais competentes e críticos. ==Infelizmente, esse objetivo é difícil de explicar aos alunos; antes, conseguíamos nos safar sem convencê-los disso, mas agora precisamos==. (versão traduzida)



> [!NOTE]
> A imagem da capa do post foi gerado pelo `Google Nano Banana Pro`. "Eu erro de maneira convincente", a frase explica o código Python que não funciona.
<!-- {{< details summary="Detalhes do post" >}}
* A imagem da capa do post foi gerado pelo `Google Nano Banana Pro`. "Eu erro de maneira convincente", a frase explica o código Python da imagem que não funciona.
{{< /details >}} -->
