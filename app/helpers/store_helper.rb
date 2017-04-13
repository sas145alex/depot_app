module StoreHelper
  def get_ind_counter_from_session
    "You're visiting this catalog " +
    session[:ind_counter].to_s +
    "-" +
    "time".pluralize(session[:ind_counter])
  end
end
