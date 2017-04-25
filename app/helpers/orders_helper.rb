module OrdersHelper
  def payment_type_options
    options_for_select(
    Order::pay_types.
      map {|k,v| I18n.t('orders.payment_types.' + k.parameterize.underscore) } )    
  end
end
