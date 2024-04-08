# QAOA

No problema de vertex coverage o circuito de QAOA não parece ser possível otimizar.

O ciruito começa com uma profundidade de 34 e depois da simplificações fica com ≃ 40-45.

## Notas

Devido aos parametros presentes no circuito não é possível utilizar certos métodos

- teleport_reduce()
- stats()
- ...

Eles precisam que os parametros sejam frações, ao não serem produzem um erro.

# Conclusões

O [pyzx](https://github.com/Quantomatic/pyzx) parece perder muita utilidade quando utilizado com parametros reais.

Pois não é capaz de aplicar certas simplificações.

Os circuitos de QAOA parecem ser simples o suficiente que qualquer "otimização" poderá levar
a um aumento da profundidade do circuito.

  > Penso que isto se deva à tendência do pyzx a utilizar Z-spiders e consequente introdução de hadamards


