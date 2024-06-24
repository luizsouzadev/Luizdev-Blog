class Postagem < ApplicationRecord
  self.implicit_order_column = :created_at

  has_rich_text :conteudo

end
