# Fleet 

![LOGO 2 - AZUL FUNDO BRANCO](https://github.com/user-attachments/assets/42d9beaa-c63a-4d16-adb1-163f6a381a5b)

![Uploading LOGO 2 - AZUL FUNDO BRANCO.png…]()

Este projeto é um sistema de gerenciamento de frotas desenvolvido na disciplina de Banco de Dados I. O foco desta etapa é a modelagem relacional, com criação das entidades, seus atributos e relacionamentos, visando uma estrutura de dados robusta para futuras integrações com sistemas de gestão.

## Objetivo

O sistema tem como finalidade gerenciar veículos, motoristas, manutenções e abastecimentos de maneira eficiente, oferecendo suporte à tomada de decisões para empresas que possuem frotas operacionais.

## Funcionalidades

- Cadastro de **empresas**.
- Controle de **veículos** (marca, modelo, placa, ano, data de cadastro).
- Gerenciamento de **motoristas** (nome, CPF, telefone).
- Registro de **viagens** com origem/destino, motorista, veículo, motivo e datas.
- Lançamento de **manutenções** (data, tipo, custo e status).
- Registro de **abastecimentos** (data, valor, litros, posto).

## Modelo Relacional

O sistema foi modelado com base em um banco de dados relacional, conforme o diagrama abaixo:

![image](https://github.com/user-attachments/assets/434ba841-8a98-4331-9cdc-39989d36e0a6)


### Principais Tabelas

| Tabela         | Descrição                                      |
|----------------|------------------------------------------------|
| `empresa`      | Dados das empresas responsáveis pelos veículos |
| `veiculo`      | Informações sobre os veículos                  |
| `motorista`    | Informações pessoais dos motoristas            |
| `viagem`       | Registro das viagens realizadas                |
| `manutencao`   | Histórico de manutenções                       |
| `abastecimento`| Histórico de abastecimentos                   |

## Tecnologias Utilizadas

- PostgreSQL
- Visual Paradigm
- DBeaver

## Acadêmicos

- José Henn.
- Josué Borges.
- Luiz Triches.

## Status do Projeto

> 🚧 Em desenvolvimento
