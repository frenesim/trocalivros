# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  SimpleNavigation::Renderer::Bootstrap


  navigation.items do |primary|

    primary.dom_id = 'top-nav'
    primary.dom_class = 'nav nav-tabs'

    primary.item :livros, 'Quero', livros_path, :class => 'my_class'
    primary.item :livros, 'Tenho', new_livro_path


  end

end
