# QAOA

No problema de vertex coverage o circuito de QAOA não parece ser possível otimizar.

O ciruito começa com uma profundidade de 34 e depois da simplificações fica com ≃ 40-45.

## Notas

Devido aos parametros presentes no circuito não é possível utilizar certos métodos

- teleport_reduce()
- stats()
- ...

Eles precisam que os parametros sejam frações, ao não serem produzem um erro.


