ActiveAdmin.register Match do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  #
  form do |f|
    f.inputs "Match" do
      f.input :name
      f.input :game
    end

    f.has_many :pots, heading: "Teams" do |pot|
      pot.input :name
      pot.input :wallet_address
    end

    f.actions
  end

  permit_params :name, :game, :pots_attributes,
    pots_attributes: [:name, :wallet_address]
end
