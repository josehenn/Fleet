# 🚗 Fleet Management System (Unoesc)

Este projeto consiste em um sistema de **controle de frotas**, desenvolvido como trabalho final da disciplina de Banco de Dados I do curso de Ciências da Computação.

## 📌 Objetivo

O sistema tem como finalidade gerenciar veículos, motoristas, manutenções e abastecimentos de maneira eficiente, oferecendo suporte à tomada de decisões para empresas que possuem frotas operacionais.

## ⚙️ Funcionalidades

- Cadastro de **empresas**.
- Controle de **veículos** (marca, modelo, placa, ano, data de cadastro).
- Gerenciamento de **motoristas** (nome, CPF, telefone).
- Registro de **viagens** com origem/destino, motorista, veículo, motivo e datas.
- Lançamento de **manutenções** (data, tipo, custo e status).
- Registro de **abastecimentos** (data, valor, litros, posto).

## 🧩 Modelo Relacional

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

## 🛠️ Tecnologias Utilizadas

- Banco de Dados: PostgreSQL
- Ferramenta de Modelagem: Visual Paradigm

## 👥 Integrantes

- José Henn.
- Josué Borges.
- Luiz Triches.

## 📅 Status do Projeto

> 🚧 Em desenvolvimento
