class ScrimAdsController < ApplicationController
  require "date"
  require "byebug"
  before_action :authenticate_user!, only: [:new] 
  def index
      @scrim_ads  = ScrimAd.where("scrim_ads.closed > ?", DateTime.now)
      @scrim_ads_delete = ScrimAd.where("scrim_ads.closed < ?", DateTime.now)
      @scrim_ads_delete.destroy_all
  end
  
  def new
    @scrim_ad = ScrimAd.new
  end
  
  def create
    @scrim_ad = ScrimAd.new(scrim_ads_params)
    @scrim_ad.user = current_user
    @scrim_ad.save!
    redirect_to scrim_ads_path
  end
  
  def destroy
    @scrim_ad = ScrimAd.find(params[:id])
    @scrim_ad.destroy
    redirect_to scrim_ads_path, notice: "募集を削除しました。"
  end
  
  def show
    @scrim_ad = ScrimAd.find(params[:id])
    @comments = @scrim_ad.comments
    @comment = Comment.new()
  end
  
private 

  def scrim_ads_params
    params.require(:scrim_ad).permit!
  end
  
end
