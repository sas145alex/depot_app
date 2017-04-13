module SessionCount

  private
  def inc_ind_counter
    session[:ind_counter] ||= 0
    session[:ind_counter]  += 1
  end
end
