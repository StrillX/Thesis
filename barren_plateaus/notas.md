# Barren Plateaus


## McClean et al. (2018)
O conceito de [barren plateau](https://arxiv.org/abs/1803.11173) foi introduzido em 2018 por McClean et al.

Nesse artigo mostrou-se que para um grande classe de PQC incializados com parâmetros aleatórios os gradientes
concentravam-se em zero, causando o fenómeno de barren plateau.

Para combater este fenómeno foram propostas as seguites metodologias.
- Palpites educados sobre os parâmetros iniciais
- A utilização de segmentos pré-treinados, pois foi provou ser bem sucedido no cenário clássico

## Cerezo et al. (2021)

Neste [artigo](https://arxiv.org/pdf/2001.00550v3.pdf) foi provado que a escolha da função de custo
poderia causar um barren plateau.

Caso a função de custo fosse global, isto é tivesse em consideração todos os parâmetros. Levaria
ao aparecimento de um barren plateu mesmo com uma profundidade de apenas 1.

Contudo, se esta função de custo fosse local os circuitos são treináveis até uma profundidade de 
$log(n)$, a partir de $poly(n)$ o barren plateau surgirá de novo.

Entre estes dois limites existe uma região de transição onde o gradiente vai desparecendo de forma 
polinomial gradualmente até ser exponencial.

## Ragone & Bakalov et al. (2023)

Neste [artigo](https://arxiv.org/pdf/2309.09342v2.pdf) foi introduzida uma framework que une todos os resultados
apresentados até à data. As principais razões que originam barren plateaus são:

- Expressividade excessiva do circuito (circuitos profundos)
- Estados iniciais demasiado entangled
- Funções de custo globais
- Canais de ruido

## Cerezo et al. (2023)
### Does provable absence of barren plateaus imply classical simulability?

O próprio nome do artigo explica o conteúdo.

Caso seja de facto este o caso, QML não tem futuro no que toca a PQC's.
Terão de ser exploradas outras alternativas.
Possivelmente QCNN.

Nota: VQE treinadas não aparentam ter barren plateaus, segundo o professor LPS
