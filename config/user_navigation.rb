# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  SimpleNavigation::Renderer::Bootstrap

  navigation.items do |user_nav|

    user_nav.dom_id = 'side-nav'
    user_nav.dom_class = 'nav nav-list'

    user_nav.item :users, 'Perfil', edit_user_registration_path
    user_nav.item :users, 'Alterar Palavra Chave',  user_change_password_path
    user_nav.item :users, 'Os Meus Livros',  user_books_path

  end

end
