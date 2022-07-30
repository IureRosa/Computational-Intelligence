## Trabalho Final | Inteligência Computacional

Este repositório contém arquivos referentes ao trabalho final da disciplina de Inteligência Computacional (ELT 451) da UFV , que aborda uma análise comparativa entre as técnicas de Redes Neurais Convolucionais (CNN) e Lógica Fuzzy na tarefa de classificação de imagens de gestos estáticos de Libras.

#### Diretórios :file_folder:

* *dataset_full* : contém o conjunto de dados utilizado para treino / validação e teste dos modelos.
* *models* : contém as arquiteturas dos modelos.
* *outputs* : contém os arquivos gerados durante a fase de treinamento e otimização dos modelos.
* *written_work* : contém o trabalho escrito.
* *temp* : contém o crop gerado em tempo de execução pelo script [CNN_real_time_classifier.py](https://github.com/IureRosa/comp-Intelligence/TrabFinal/blob/master/CNN_real_time_classifier.py).


#### Requisitos :bookmark_tabs:

Para executar os scripts de treinamento dos modelos é necessário possuir as dependências, para isso basta instalar um gerenciador de dependências e ambientes, como o [Conda](https://docs.conda.io/en/latest/conda.html) e executar o código abaixo para importar o ambiente com as dependências utilizadas no projeto.

* Importar : ```conda env create -f environment.yml```

* Ativar : ```conda activate machinelearning```

* Execute os scripts normalmente em uma IDE Python ou via terminal : ```python CNN_train.py ```

 
