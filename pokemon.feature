Feature: Retorna lista de dados por nome de Pokemon

  Background:
    * def forms = read('./response/forms.json')
    * url 'https://pokeapi.co/api/v2/pokemon/'

  Scenario: Informações do Pokemon Ditto
    * path 'ditto'
    * method get
    * status 200
    * match response == read('./response/pokemon-info.json')
    