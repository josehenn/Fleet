# Fleet 

<img src="https://github.com/user-attachments/assets/42d9beaa-c63a-4d16-adb1-163f6a381a5b" alt="LOGO 2 - AZUL FUNDO BRANCO" width="250" height="100"/>

Este projeto é um sistema de gerenciamento de frotas desenvolvido na disciplina de Banco de Dados I. O foco desta etapa é a modelagem relacional, com criação das entidades, seus atributos e relacionamentos, visando uma estrutura de dados robusta para futuras integrações com sistemas de gestão.

## Objetivo

O sistema tem como finalidade gerenciar veículos, motoristas, manutenções e abastecimentos de maneira eficiente, oferecendo suporte à tomada de decisões para empresas que possuem frotas operacionais.

## 📁 Acesso rápido aos diretórios:

- [📂 Documentos](./Documentos)
- [📂 Mr Sistema](./Mr%20Sistema)
- [📂 Relatórios](./Relatórios)
- [📂 SQL](./Sql)

## Funcionalidades

- Cadastro de **empresas**.
- Controle de **veículos** (marca, modelo, placa, ano, data de cadastro).
- Gerenciamento de **motoristas** (nome, CPF, telefone).
- Registro de **viagens** com origem/destino, motorista, veículo, motivo e datas.
- Lançamento de **manutenções** (data, tipo, custo e status).
- Registro de **abastecimentos** (data, valor, litros, posto).

## Modelo Relacional

O sistema foi modelado com base em um banco de dados relacional, conforme o diagrama abaixo:

![Captura de tela 2025-07-01 120457](https://github.com/user-attachments/assets/f254294d-4f6a-4536-b5d2-67f60d303838)

### Principais Tabelas

| Tabela         | Descrição                                      |
|----------------|------------------------------------------------|
| `empresa`      | Dados das empresas responsáveis pelos veículos |
| `veiculo`      | Informações sobre os veículos                  |
| `motorista`    | Informações pessoais dos motoristas            |
| `viagem`       | Registro das viagens realizadas                |
| `manutencao`   | Histórico de manutenções                       |
| `abastecimento`| Histórico de abastecimentos                    |
| `cargas`       | Registro das cargas                            |
| `doc_viagem`   | Documentos para viagem                         |

## Tecnologias Utilizadas

- PostgreSQL
- Visual Paradigm
- DBeaver
  
## Acadêmicos

- José Henn.
- Josué Borges.
- Luiz Triches.

## Status do Projeto

Concluímos a primeira parte da modelagem de dados, onde montamos o nosso Sistema de Gerenciamento. No próximo semestre, continuaremos o projeto desenvolvendo mais funcionalidades a ele.


<div align="center">
  <img src="https://github.com/user-attachments/assets/cd656d09-4c68-4c50-ab45-7eab4b3a9694" alt="unoesc" width="200"/>
</div>

