
# Fake Shop

O **Fake Shop** é uma aplicação de loja fictícia, projetada para demonstrar a implementação de uma arquitetura de aplicação utilizando **Kubernetes** para deploy e **Terraform** para gerenciamento da infraestrutura.

## Visão Geral da Aplicação

A aplicação é composta por:

- **Frontend**: Desenvolvido utilizando HTML, CSS e SCSS, a interface de usuário exibe produtos e permite a navegação simples da loja.
- **Backend**: Implementado em Python, interage com o banco de dados PostgreSQL para armazenar e recuperar informações dos produtos.
- **Banco de Dados**: PostgreSQL configurado via variáveis de ambiente.
- **Infraestrutura**: Usando **Terraform** para provisionamento de recursos na nuvem e **Kubernetes** para deploy dos contêineres.

## Arquitetura

A arquitetura da aplicação é composta por:

- **Frontend**: SCSS, CSS, HTML.
- **Backend**: Python.
- **Infraestrutura**: HCL (Terraform).
- **Banco de Dados**: PostgreSQL.

## Como Rodar Localmente

### Pré-requisitos

1. **Docker**: Para criação e execução dos contêineres.
2. **Terraform**: Para provisionamento da infraestrutura.
3. **Conta na AWS**: Para utilizar o serviço de kubernetes (EKS).
4. **Kubernetes**: Para gerenciamento dos contêineres em produção.

### Passos para Execução

1. Clone o repositório:
   ```bash
   git clone https://github.com/YuriMSdS/fake-shop.git
   cd fake-shop
   ```

2. Crie e configure um banco de dados PostgreSQL.

3. Configure as variáveis de ambiente:
   - `DB_HOST`: Host do banco de dados.
   - `DB_USER`: Usuário do banco.
   - `DB_PASSWORD`: Senha do banco.
   - `DB_NAME`: Nome do banco de dados.
   - `DB_PORT`: Porta do banco de dados.

4. Execute os containers Docker (se necessário para ambiente local):
   ```bash
   docker-compose up
   ```

## Deploy com Kubernetes

O **deploy** da aplicação é realizado com Kubernetes, onde os contêineres do frontend e backend são gerenciados em clusters. A configuração do Kubernetes inclui:

1. **Configuração de Pods** para o backend e frontend.
2. **Serviços** para expor os pods à rede.
3. **Deploy** de recursos utilizando arquivos YAML para orquestrar o lançamento de containers.

### Comandos para Deploy:

1. Crie os pods e serviços no Kubernetes:
   ```bash
   kubectl apply -f k8s/
   ```

2. Verifique se os pods estão rodando corretamente:
   ```bash
   kubectl get pods
   ```

## Uso do Terraform

O **Terraform** é utilizado para provisionar a infraestrutura necessária, incluindo a criação de clusters Kubernetes e bancos de dados. O código do Terraform está localizado no diretório `infrastructure/`.

### Passos para usar o Terraform

1. Inicialize o Terraform:
   ```bash
   terraform init
   ```

2. Verifique o plano de execução:
   ```bash
   terraform plan
   ```

3. Aplique as configurações para provisionar os recursos:
   ```bash
   terraform apply
   ```

4. Verifique os recursos provisionados:
   ```bash
   terraform show
   ```

## Contribuindo

Sinta-se à vontade para contribuir! Se você encontrar problemas ou tiver sugestões, abra uma issue ou envie um pull request.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
