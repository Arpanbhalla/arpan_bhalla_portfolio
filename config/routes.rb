Rails.application.routes.draw do
  devise_for :users
  draw :blog
  draw :pages
  draw :portfolio
end
