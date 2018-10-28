class ToppagesController < ApplicationController
  def index
    if logged_in?
      @microtask=current_user.microtasks.build
      @microtasks = current_user.microtasks.order('created_at DESC').page(params[:page])
    end
  end
end
