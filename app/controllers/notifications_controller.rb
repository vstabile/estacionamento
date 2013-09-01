class NotificationsController < ApplicationController
  def index
    @notifications = Notification.order("reported_at DESC").page(params[:page]).per(20)
  end

  def show
    @notification = Notification.find params[:id]
  end
end
