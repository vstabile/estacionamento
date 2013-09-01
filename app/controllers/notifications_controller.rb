class NotificationsController < ApplicationController
  def index
    @q = Notification.order("reported_at DESC").search(params[:q])
    @notifications = @q.result(distinct: true).page(params[:page]).per(20)
  end

  def show
    @notification = Notification.find params[:id]
  end
end
