# Godot UI Button Mapping

## Problem and what I kinda solve haha
Personally, I don't really like the visual way of connecting buttons to actions in Godot, so I've developed a code-based approach to organize myself, and I believe you might like it, so I'm sharing it.

With this code, it's possible to map all button clicks on a screen to the same method, while still being able to identify which button was clicked, making the way of managing clicks more organized in my opinion =D.

## Requirements
- For a button to be mapped it needs to be in the group 'ui-selectable' (you can change the group name in UIButtonMapper.gd)
- Add to your UI scene the UIButtonMapper scene
- In your script connect to the signals from UIButtonMapper
  - They are 'button_pressed', 'check_button_toggled', 'option_button_selected'
- Enjoy =)

---

# Mapeamento de Botões de Interface do Godot

## Problema e o que eu meio que resolvi haha
Pessoalmente, eu não gosto muito da forma visual de conectar os botões a ações no Godot, então desenvolvi uma abordagem baseada em código para me organizar, e acredito que você possa gostar, por isso estou compartilhando.

Com este código, é possível mapear todos os cliques em botões de uma tela para o mesmo método, mas ainda assim ser capaz de identificar qual botão foi clicado, tornando a forma de gerenciar os cliques mais organizada na minha opinião =D.

## Requisitos
- Para que um botão seja mapeado, ele precisa estar no grupo 'ui-selectable' (você pode alterar o nome do grupo em UIButtonMapper.gd)
- Adicione à sua cena de interface de usuário (UI) a cena UIButtonMapper
- Em seu script, conecte-se aos sinais do UIButtonMapper
  - Eles são 'button_pressed', 'check_button_toggled', 'option_button_selected'
- Divirta-se =)
