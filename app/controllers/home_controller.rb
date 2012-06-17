class HomeController < ApplicationController
  def index
    @content_announcements = ContentAnnouncement.order('created_at DESC')
  end
end
