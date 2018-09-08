class NitteiController < ApplicationController
  skip_before_action :check_logined, only: [:show]

  def show
  end
end
