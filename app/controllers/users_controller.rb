class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def index
        @q = User.ransack(params[:q])
        @users = @q.result(distinct: true) 
        @users_1 = @q.result(distinct: true) .where(prefecture_id: 1).where(syurui: [1,2])
        @users_2 = @q.result(distinct: true) .where(prefecture_id: 2).where(syurui: [1,2])
        @users_3 = @q.result(distinct: true) .where(prefecture_id: 3).where(syurui: [1,2])
        @users_4 = @q.result(distinct: true) .where(prefecture_id: 4).where(syurui: [1,2])
        @users_5 = @q.result(distinct: true) .where(prefecture_id: 5).where(syurui: [1,2])
        @users_6 = @q.result(distinct: true) .where(prefecture_id: 6).where(syurui: [1,2])
        @users_7 = @q.result(distinct: true) .where(prefecture_id: 7).where(syurui: [1,2])
        @users_8 = @q.result(distinct: true) .where(prefecture_id: 8).where(syurui: [1,2])
        @users_9 = @q.result(distinct: true) .where(prefecture_id: 9).where(syurui: [1,2])
        @users_10 = @q.result(distinct: true) .where(prefecture_id: 10).where(syurui: [1,2])
        @users_11 = @q.result(distinct: true) .where(prefecture_id: 11).where(syurui: [1,2])
        @users_12 = @q.result(distinct: true) .where(prefecture_id: 12).where(syurui: [1,2])
        @users_13 = @q.result(distinct: true) .where(prefecture_id: 13).where(syurui: [1,2])
        @users_14 = @q.result(distinct: true) .where(prefecture_id: 14).where(syurui: [1,2])
        @users_15 = @q.result(distinct: true) .where(prefecture_id: 15).where(syurui: [1,2])
        @users_16 = @q.result(distinct: true) .where(prefecture_id: 16).where(syurui: [1,2])
        @users_17 = @q.result(distinct: true) .where(prefecture_id: 17).where(syurui: [1,2])
        @users_18 = @q.result(distinct: true) .where(prefecture_id: 18).where(syurui: [1,2])
        @users_19 = @q.result(distinct: true) .where(prefecture_id: 19).where(syurui: [1,2])
        @users_20 = @q.result(distinct: true) .where(prefecture_id: 20).where(syurui: [1,2])
        @users_21 = @q.result(distinct: true) .where(prefecture_id: 21).where(syurui: [1,2])
        @users_22 = @q.result(distinct: true) .where(prefecture_id: 22).where(syurui: [1,2])
        @users_23 = @q.result(distinct: true) .where(prefecture_id: 23).where(syurui: [1,2])
        @users_24 = @q.result(distinct: true) .where(prefecture_id: 24).where(syurui: [1,2])
        @users_25 = @q.result(distinct: true) .where(prefecture_id: 25).where(syurui: [1,2])
        @users_26 = @q.result(distinct: true) .where(prefecture_id: 26).where(syurui: [1,2])
        @users_27 = @q.result(distinct: true) .where(prefecture_id: 27).where(syurui: [1,2])
        @users_28 = @q.result(distinct: true) .where(prefecture_id: 28).where(syurui: [1,2])
        @users_29 = @q.result(distinct: true) .where(prefecture_id: 29).where(syurui: [1,2])
        @users_30 = @q.result(distinct: true) .where(prefecture_id: 30).where(syurui: [1,2])
        @users_31 = @q.result(distinct: true) .where(prefecture_id: 31).where(syurui: [1,2])
        @users_32 = @q.result(distinct: true) .where(prefecture_id: 32).where(syurui: [1,2])
        @users_33 = @q.result(distinct: true) .where(prefecture_id: 33).where(syurui: [1,2])
        @users_34 = @q.result(distinct: true) .where(prefecture_id: 34).where(syurui: [1,2])
        @users_35 = @q.result(distinct: true) .where(prefecture_id: 35).where(syurui: [1,2])
        @users_36 = @q.result(distinct: true) .where(prefecture_id: 36).where(syurui: [1,2])
        @users_37 = @q.result(distinct: true) .where(prefecture_id: 37).where(syurui: [1,2])
        @users_38 = @q.result(distinct: true) .where(prefecture_id: 38).where(syurui: [1,2])
        @users_39 = @q.result(distinct: true) .where(prefecture_id: 39).where(syurui: [1,2])
        @users_40 = @q.result(distinct: true) .where(prefecture_id: 40).where(syurui: [1,2])
        @users_41 = @q.result(distinct: true) .where(prefecture_id: 41).where(syurui: [1,2])
        @users_42 = @q.result(distinct: true) .where(prefecture_id: 42).where(syurui: [1,2])
        @users_43 = @q.result(distinct: true) .where(prefecture_id: 43).where(syurui: [1,2])
        @users_44 = @q.result(distinct: true) .where(prefecture_id: 44).where(syurui: [1,2])
        @users_45 = @q.result(distinct: true) .where(prefecture_id: 45).where(syurui: [1,2])
        @users_46 = @q.result(distinct: true) .where(prefecture_id: 46).where(syurui: [1,2])
        @users_47 = @q.result(distinct: true) .where(prefecture_id: 47).where(syurui: [1,2])
       
       
       


    end    


          before_action :authenticate_user!, except: [:index]


    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :profile, :syurui, :ryakusyou, :prefecture, :prefecture_id])
      end



end
