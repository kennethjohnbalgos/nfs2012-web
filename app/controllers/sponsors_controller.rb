class SponsorsController < ApplicationController
  def index
    @content_sponsors = ContentSponsor.order('title')
    @content_sponsor = params[:id].present? ? @content_sponsors.find(params[:id]) : @content_sponsors.where(clickable: true).first
  end
  
  def content
    @content_sponsor = ContentSponsor.find(params[:id])
    renderJS
  end
end
