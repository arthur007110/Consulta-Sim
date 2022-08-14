class Paciente < ApplicationRecord
  has_many :consultums
  has_one :endereco, :dependent => :destroy

  accepts_nested_attributes_for :endereco, update_only: true, allow_destroy: true

  validates :nome, presence: true, length: { in: 8..50 },format: { with: /[a-zA-Z]+/, message: "only allows letters" }, format: { with: /\s/ }
  validates :cpf, presence: true, length: { is: 11 }, uniqueness: true, format: { with: /[\d]+/, message: "only allow numbers" }
  validates :email, presence: true, length: { minimum: 4 }, format: { with: /[a-z0-9.]+@[a-z0-9]+\.[a-z]+(\.[a-z]+)?/ }
  validates :nascimento, presence: true, in_future: false
end
