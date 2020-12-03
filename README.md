## Resolvendo problemas com OO

Este repositório contém o código produzido ao longo das 4 lives da série **Resolvendo Problemas com OO**. O objetivo da série foi revisitar conceitos de Orientação a Objetos enquanto resolvíamos um problema de manipulação e leitura de dados de arquivos CSV.

### O problema

Na pasta `/data` existem arquivos CSV que contém dados de cobranças e pagamentos de um cartão de crédito do Nubank. Estes arquivos podem ser obtidos por clientes do Nubank através do site [https://nubank.com.br](https://nubank.com.br).

O código deve percorrer todos arquivos e agrupar os itens de acordo com sua categoria, criando novos arquivos CSV na pasta `/categories` para esta reorganização.

Em seguida o código deve percorrer os arquivos com dados de categorias e popular objetos do tipo `Category` e `Expense`, representando em objetos as categorias e despesas respectivamente. Com estes objetos é possível extrair informações como o total gasto por categoria e ordenar os maiores gastos.

## Execução

Para executar o código, você deve:

- possuir Ruby instalado, com versão superior a 2.5.0
- executar, dentro do diretório da aplicação: `ruby app.rb`


