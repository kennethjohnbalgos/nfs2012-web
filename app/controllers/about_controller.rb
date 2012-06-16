class AboutController < ApplicationController
  def index
    @content_abouts = ContentAbout.order('position')
    @content_about = @content_abouts.where(clickable: true).first
  end
  
  def content
    @content_about = ContentAbout.find(params[:id])
    renderJS
  end
end
