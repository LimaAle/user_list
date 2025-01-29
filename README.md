# Simples aplicativo de lista de usuários -

Este projeto é um aplicativo Flutter que usa uma API mockapi.io para listar usuários e visualizar detalhes pessoais. 

Foram utilizados: 
  - GetX para gerenciamento de estado;
  - Dio para chamadas http;
  - Freezed para auxiliar na criação entity;
  - Mockito para testes.

# Arquitetura do Projeto

O projeto se baseia na arquitetura recomendada pelo flutter (MVVM). 

## Camadas utilizadas:

## 🔹 Domínio

Esta camada define as regras de negócios.

Entidades: Modelo de dados imutável que representa entidades base (UserEntity, UserDetailEntity).

## 🔹 Data

Responsável pela comunicação com outros recursos, como APIs.

Repositories (user_repository): Define contratos para acesso a dados, garantindo que a aplicação não dependa diretamente da implementação concreta.

Repositories (user_repository_impl): Implementa as interfaces definidas no registro.

Services (user_api): Responsável por realizar requisições das APIs que fazem solicitações HTTP usando Dio.

## 🔹UI

Camada de interface do usuário.

ViewModels: Utiliza GetXController para gerenciamento de estado.

Telas do aplicativo (HomeView, DetailView).
