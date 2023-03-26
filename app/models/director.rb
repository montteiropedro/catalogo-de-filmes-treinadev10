class Director < ApplicationRecord
  has_many :movies
  belongs_to :genre

  validates(
    :name, :nationality, :birthday, :genre_id,
    presence: { message: "Não pode estar vazio" }
  )
  validates(
    :name,
    format: { with: /\A[a-zA-ZÀ-ú]+(?: [a-zA-ZÀ-ú]+)*\z/, message: "Apenas letras e espaços únicos" },
    uniqueness: { case_sensitive: false, message: "Diretor já registrado" }
  )
  validates(
    :nationality,
    format: { with: /\A[a-zA-ZÀ-ú]+(?: [a-zA-ZÀ-ú]+)*\z/, message: "Apenas letras e espaços únicos" }
  )
end
