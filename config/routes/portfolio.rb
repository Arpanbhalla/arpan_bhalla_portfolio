resources :portfolios, except: [:show]
get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'