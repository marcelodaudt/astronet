# Astronet

Este projeto foi desenvolvido como parte dos requisitos para obtenção do título de **Especialista em Ciências de Dados**, realizado no **Centro de Ciências Matemáticas Aplicadas à Indústria do Instituto de Ciências Matemáticas e de Computação**, **Universidade de São Paulo** - ICMC/USP, e procurou estudar, compreender e implementar o projeto original desenvolvido por **Chris Shallue**: [@cshallue](https://github.com/cshallue).

O **Astronet** é um modelo de **Aprendizado de Máquina Profundo**, que utiliza **Redes Neurais Convolucionais** para a identificação de **Exoplanetes** a partir de dados (curvas de luz) gerados pelo **Telescópio Espacial Kepler**.

Para desenvolvimento dos experimentos do **Astronet**, foi criada uma imagem em **Docker**, permitindo assim a reprodução e portabilidade dos experimentos realizados com o modelo. A imagem encontra-se diponível para *download* no [**DockerHub**](https://hub.docker.com/r/mdaudt/astronet-image) e já possuí o código do **Astronet** e demais pacotes necessários para seu funcionamento, como o Python 3.6 e TensorFlow 1.15.0.

---

## Diretórios

[astronet/](astronet/astronet/)

* Uma rede neural para identificar exoplanetas em curvas de luz. Contém código para:
  * Baixando e pré-processando as curvas de luz do Kepler.
  * Construindo diferentes tipos de modelos de classificação de redes neurais.
  * Treinamento e avaliação de um novo modelo.
  * Usando um modelo treinado para gerar novas previsões.

[astrowavenet/](astronet/astrowavenet/)

* Um modelo generativo para curvas de luz.

[light_curve/](astronet/light_curve)

* Utilitários para operar em curvas de luz. Esses incluem:
  * Lendo dados do Kepler a partir de arquivos `.fits`.
  * Aplicando um filtro mediano para suavizar e normalizar uma curva de luz.
  * Dobragem de fase, dividindo, removendo eventos periódicos, etc.
* [light_curve/fast_ops/](exoplanet-ml/light_curve/fast_ops) contém operações de curva de luz C++ otimizadas.

[tf_util/](astronet/tf_util)

* Utilitários compartilhados do TensorFlow.

[third_party/](astronet/third_party/)

* Utilitários derivados de código de terceiros.

---

# Citação

Shallue, C. J., & Vanderburg, A. (2018). Identifying Exoplanets with Deep
Learning: A Five-planet Resonant Chain around Kepler-80 and an Eighth Planet
around Kepler-90. *The Astronomical Journal*, 155(2), 94.

Texto completo disponível em [*The Astronomical Journal*](http://iopscience.iop.org/article/10.3847/1538-3881/aa9e09/meta).

# Aviso Legal

Este não é um produto oficial do Google.