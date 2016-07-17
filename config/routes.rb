Rails.application.routes.draw do
  # http://localhost:3000/group
  # resources :groups
  
  # We actually want to be able to do http://localhost:3000/api/groups 
  scope '/api' do
    resources :groups, except: [:new, :edit]
  end
end