Rails.application.routes.draw do
  resources(:bugs, only: %i[create new])
  root(action: :new, controller: :bugs)
end
