![image](https://github.com/hqnicolas/Delphi7Exercices/assets/41456803/36c5d02c-1521-421a-b7c8-1d9d60d35ccf)

# O jogo da forca.

Este é um programa escrito em Delphi, Ele contém vários componentes gráficos como botões e rótulos, alguns visíveis/invisíveis e outros com funções de eventos associados, tais como click events.
- Ele cria uma interface gráfica com botões para letras do alfabeto.
- Quando um botão é clicado, ele chama a função Verifica com uma letra como parâmetro.
- Essa função verifica se a letra está na palavra que o jogador deve adivinhar.
- Se a letra estiver na palavra, o contador win incrementado. Se não estiver, o contador erro é definido como true.
- O jogo termina quando a palavra completa for descoberta, ou se todos os botões forem desabilitados, indicando que todas as tentativas foram erradas.
- Neste último caso, o jogo exibe um "você perdeu" e a palavra secreta é revelada.
- O campo permite que o usuário digite sua palavra. Quando o botão OK for clicado, ele define essa palavra como a palavra secreta e começa um novo jogo.
- O campo exibe uma representação visual da palavra secreta. Se uma letra correta for descoberta, ela é colocada nessa posição na.
- Ao clicar no botão BtnVoltar, o jogo retorna a um estado inicial onde os botões de letras podem ser usados para começar outra partida e editar a palavra secreta.
