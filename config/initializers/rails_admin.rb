RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.model 'Inventory' do
    list do
      field :warehouse
      field :products
    end
    edit do
      field :warehouse
      field :products
    end
  end

  config.model 'Order' do
    list do
      field :number
      field :shipment
      field :products
    end
    edit do
      field :products
    end
  end

  config.model 'Product' do
    list do
      field :name
      field :inventory
    end
    edit do
      field :name
      field :inventory
    end
  end

  config.model 'Shipment' do
    list do
      field :id
      field :number
      field :warehouse
      field :order
      field :products
    end
    edit do
      field :number
      field :warehouse
      field :order
    end
  end

  config.model 'Warehouse' do
    list do
      field :name
      field :shipments
      field :inventory
      field :products
    end
    edit do
      field :name
      field :inventory
    end
  end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
