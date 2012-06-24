class PartnersController < ApplicationController
  def index
    @content_partners = ContentPartner.order('title')
  end
  
  def content
    @content_partner = ContentPartner.find(params[:id])
    renderJS
  end
  
  
end
