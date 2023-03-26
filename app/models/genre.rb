class Genre < ApplicationRecord
  has_many :movies
  has_many :directors

  validates(
    :name,
    presence: { message: "Não pode estar vazio" },
    format: { with: /\A[a-zA-ZÀ-ú]+(?: [a-zA-ZÀ-ú]+)*\z/, message: "Apenas letras e espaços únicos" },
    uniqueness: { case_sensitive: false, message: "Gênero já registrado" }
  )
end
