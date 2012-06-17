class AnnouncementsController < ApplicationController
  def index
    @content_announcements = ContentAnnouncement.order('created_at DESC')
    @content_announcement = params[:id].present? ? @content_announcements.find(params[:id]) : @content_announcements.where(clickable: true).first
  end
  
  def content
    @content_announcement = ContentAnnouncement.find(params[:id])
    renderJS
  end
end