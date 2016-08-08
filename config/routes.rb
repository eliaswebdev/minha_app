Rails.application.routes.draw do
  
	get '/conheca-nossa-empresa'    => 'contents#about_us', as: 'about_us'
	get '/servicos'          		=> 'contents#services', as: 'services'
	get '/fale-conosco'      		=> 'contents#contacts', as: 'contacts'
	get '/helpers'			 		=> 'pages#helpers', as: 'helpers'

	root to: 'contents#home'

	resources :students, path: 'alunos'

	resources :photos

	# root 'pages#index'

	# get '/index' => 'pages#index'
	# get "/admin" => redirect('https://www.google.com.br/?gws_rd=ssl#safe=off&q=crepusculo')
end
