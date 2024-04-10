ActiveAdmin.register SalePrice do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :sale_price, :sale_date, :sale_item
  #
  # or
  #
  # permit_params do
  #   permitted = [:sale_price, :sale_date, :sale_item]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
