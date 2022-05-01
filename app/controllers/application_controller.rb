class ApplicationController < ActionController::Base
 # deviseコントローラーにストロングパラメータを追加する          
 before_action :configure_permitted_parameters, if: :devise_controller?

 protected
 def configure_permitted_parameters
   # サインアップ時にnameのストロングパラメータを追加
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :syurui, :ryakusyou, :prefecture, :prefecture_id, :hurigana, :nicname, :url, :twitterid, :insta_name])
   # アカウント編集の時にnameとprofileのストロングパラメータを追加
   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :syurui, :ryakusyou, :prefecture, :prefecture_id, :hurigana, :remove_image, :nicname, :url, :twitterid, :insta_name])
 end



end
