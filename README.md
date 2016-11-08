# Linx Microvix Ruby
[![Code Climate](https://codeclimate.com/github/phbruce/linx_microvix/badges/gpa.svg)](https://codeclimate.com/github/phbruce/linx_microvix) [![Gem Version](https://img.shields.io/gem/v/linx_microvix.svg)](https://rubygems.org/gems/linx_microvix)

Esta gem (não oficial) é uma interface para de facilitar a integração com ERP Linx Microvix.

## Como usar

Instale a gem:

```bash
gem install linx_microvix
```

Agora insira as configurações básicas para você poder utilizar os recursos da API:

```ruby
require 'linx_microvix'

LinxMicrovix.configure do |config|
  config.user = <%= ENV['LINX_MICROVIX_USER'] %>
  config.pass = <%= ENV['LINX_MICROVIX_PASS'] %>
end
```

### Buscando os clientes que efetuaram transações em um período específico

```ruby
LinxMicrovix::Request.new('ClientesFornec', {
  cnpjEmp: '00000000000000',
  data_inicial: '2016-11-01',
  data_fim: '2016-11-07'
}).run
```
