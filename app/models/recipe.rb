class Recipe
  include HTTParty
  format :json
  default_params :key => '6f264b94325ce43e63c609dc604efbfc', count: 10

end