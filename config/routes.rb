Rails.application.routes.draw do


  resources :discipuladores
  resources :lideres

  # Controle login e a action index
  # Essa sera a pagina principal - Todos deveram autenticar
  root :to => 'login#index'

  # Verbos HTTP:
  # GET
  # POST
  # PUT
  # DELETE

  # Rotas RESTful ( Crud )
  # GET index
  # GET show
  # GET new
  # POST create
  # GET edit
  # PUT update
  # DELETE destroy

  # rake routes => imprimi as rotas permanetes
  # Esse recurso ja cria toda as rotas de forma automatica e nao polui o codigo


end
