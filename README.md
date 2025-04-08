# 🤖 Projeto de Testes de API com Robot Framework

Este projeto contém testes automatizados para APIs REST utilizando o **Robot Framework** e a biblioteca **RequestsLibrary**. É ideal para validar endpoints de serviços web de forma simples e organizada.

---

## 📦 Estrutura do Projeto

```
robot-project/
├── tests/
│   └── api_tests.robot         # Arquivo principal com os casos de teste
├── variables/
│   └── config.robot            # Arquivo de variáveis globais (ex: URL da API)
├── results/
│   └── (gerado após execução)  # Relatórios HTML e logs da execução
└── README.md                   # Este arquivo de instruções
```

---

## 🛠️ Requisitos

- Python 3.7+
- Pip (gerenciador de pacotes do Python)
- Ambiente virtual (opcional, mas recomendado)

---

## 📥 Instalação

1. **Clone o repositório ou baixe os arquivos**

```bash
git clone https://github.com/KamyllaJawad/Robot-Project.git
cd Robot-Project
```

2. **(Opcional) Crie um ambiente virtual**

```bash
python -m venv venv
source venv/bin/activate      # Linux/Mac
venv\Scripts\activate         # Windows
```

3. **Instale as dependências**

```bash
pip install robotframework
pip install robotframework-requests
```

---

## ▶️ Como Executar os Testes

1. Certifique-se de estar na pasta raiz do projeto:

```bash
cd Project-Robot
```

2. Execute os testes com o comando abaixo:

```bash
robot -d results tests/api_tests.robot
```

3. Após a execução, abra o arquivo de relatório:

```bash
results/report.html
```

> Ou abra manualmente com seu navegador: `./results/report.html`

---

## 📁 Explicação das Pastas e Arquivos

### `tests/api_tests.robot`

Contém os **casos de teste de API** usando a biblioteca `RequestsLibrary`. Exemplo:

- `GET /comments?postId=1` → Verifica se os comentários de um post específico são retornados.
- Verificações incluem: status 200, presença de campos `id`, `name`, `email`, `body`.

### `variables/config.robot`

Arquivo de **variáveis globais** reutilizáveis em todos os testes. Exemplo:

```robot
*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com
```

Isso permite trocar facilmente o endereço da API sem modificar os testes.

### `results/`

Pasta onde são armazenados os **relatórios de execução** após rodar os testes:

- `log.html`: detalhes passo a passo.
- `report.html`: visão geral dos testes.
- `output.xml`: saída bruta em XML.

---

## 🧪 Exemplo de Saída

Após rodar os testes com sucesso, o terminal mostrará:

```
Output:  results/output.xml
Log:     results/log.html
Report:  results/report.html
```

Abra `report.html` em seu navegador para ver os resultados de forma amigável.

---

## 📌 Observações

- Este projeto utiliza a API pública `jsonplaceholder.typicode.com` apenas para fins educacionais.
- Pode ser expandido para testar APIs reais, adicionando headers, autenticação, etc.
