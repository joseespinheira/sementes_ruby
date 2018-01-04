class User < ActiveRecord::Base 
  has_secure_password
  validates :nome, presence: {message: 'não pode ser deixado em branco'}, 
                    length: {maximum: 50, message: 'deve ter até 50 caracteres'}
  validates :password, presence: {message: 'não pode ser deixado em branco'}, 
                    length: {minimum: 6, message:'deve ter no minimo 6 caracteres'}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: {message: 'não pode ser deixado em branco'}, 
                    length: {maximum: 260, message: 'deve ter até 260 caracteres'}, 
                    format: { with: VALID_EMAIL_FORMAT, message: 'invalido!'}, 
                    uniqueness: {case_sensitive: false, message: 'já ultilizado'}
  before_save { self.email = email.downcase }
end