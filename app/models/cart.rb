class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :boats
end

# fazer migração para add user_id e boat_id no medelo de cart
# criar na mão obj cart
# editar controller_cart
# mesma logica do boat
# adicionar no formulario
# pelo menos action de post do carrinho
