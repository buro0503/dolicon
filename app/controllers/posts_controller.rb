class PostsController < ApplicationController

 def index
  if params[:search1] == nil
    @posts= Post.all.page(params[:page]).per(10).where("start_time > ?",Date.today).order(start_time: :asc)
  elsif params[:search1] == ''
    @posts= Post.all.page(params[:page]).per(10).where("start_time > ?",Date.today).order(start_time: :asc)
  else
    @posts = Post.where("music LIKE ? OR name2 LIKE ? ",'%' + params[:search1] + '%','%' + params[:search1] + '%').page(params[:page]).where("start_time > ?",Date.today).per(10)
  end 
end

 def index_likes
  @posts = Post.all.where("start_time > ?",Date.today).page(params[:page]).per(10)
  @rank_posts = Post.all.where("start_time > ?",Date.today).sort {|a,b| b.liked_users.count <=> a.liked_users.count}
 end

 def index_new
  @posts= Post.all.page(params[:page]).per(10).order(created_at: :desc)
 end



 def new
    @post = Post.new(
    user_id: current_user.id
    )
 end

 def create
    post = Post.new(post_params)
    post.user_id=current_user.id
    if post.save
        redirect_to :action => "index_new"
    else
        redirect_to :action => "new"
    end
 end

 def this_month
   @post = Post.all 
this_month = Date.today.all_month # all_monthをDate.todayに適用すると、今月の年月日データを取得できる。
   @post.each do |post| 
    if (this_month.include?(Date.parse(post[:created_at].to_s)))
    # 今月の日にちの中にpost[:created_at]の年月日が含まれていれば、trueを返す。
       @data += post[:name1] + "_" + post[:name2]
    end
  end
end

 def show
   @post = Post.find(params[:id])
   @comments = @post.comments
   @comment = Comment.new
end


 def edit
    @post = Post.find(params[:id])
 end

 def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to :action => "show", :id => post.id
    else
      redirect_to :action => "new"
    end
 end

 def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
 end

 def calendar
   @place= JpPrefecture::Prefecture.all
   @q = Post.ransack(params[:q])
   @post = @q.result(distinct: true) 
   @post_1 = @q.result(distinct: true) .where(prefecture_id: 1)
   @post_2 = @q.result(distinct: true) .where(prefecture_id: 2)
@post_3 = @q.result(distinct: true) .where(prefecture_id: 3)
@post_4 = @q.result(distinct: true) .where(prefecture_id: 4)
@post_5 = @q.result(distinct: true) .where(prefecture_id: 5)
@post_6 = @q.result(distinct: true) .where(prefecture_id: 6)
@post_7 = @q.result(distinct: true) .where(prefecture_id: 7)
@post_8 = @q.result(distinct: true) .where(prefecture_id: 8)
@post_9 = @q.result(distinct: true) .where(prefecture_id: 9)
@post_10 = @q.result(distinct: true) .where(prefecture_id: 10)
@post_11 = @q.result(distinct: true) .where(prefecture_id: 11)
@post_12 = @q.result(distinct: true) .where(prefecture_id: 12)
@post_13 = @q.result(distinct: true) .where(prefecture_id: 13)
@post_14 = @q.result(distinct: true) .where(prefecture_id: 14)
@post_15 = @q.result(distinct: true) .where(prefecture_id: 15)
@post_16 = @q.result(distinct: true) .where(prefecture_id: 16)
@post_17 = @q.result(distinct: true) .where(prefecture_id: 17)
@post_18 = @q.result(distinct: true) .where(prefecture_id: 18)
@post_19 = @q.result(distinct: true) .where(prefecture_id: 19)
@post_20 = @q.result(distinct: true) .where(prefecture_id: 20)
@post_21 = @q.result(distinct: true) .where(prefecture_id: 21)
@post_22 = @q.result(distinct: true) .where(prefecture_id: 22)
@post_23 = @q.result(distinct: true) .where(prefecture_id: 23)
@post_24 = @q.result(distinct: true) .where(prefecture_id: 24)
@post_25 = @q.result(distinct: true) .where(prefecture_id: 25)
@post_26 = @q.result(distinct: true) .where(prefecture_id: 26)
@post_27 = @q.result(distinct: true) .where(prefecture_id: 27)
@post_28 = @q.result(distinct: true) .where(prefecture_id: 28)
@post_29 = @q.result(distinct: true) .where(prefecture_id: 29)
@post_30 = @q.result(distinct: true) .where(prefecture_id: 30)
@post_31 = @q.result(distinct: true) .where(prefecture_id: 31)
@post_32 = @q.result(distinct: true) .where(prefecture_id: 32)
@post_33 = @q.result(distinct: true) .where(prefecture_id: 33)
@post_34 = @q.result(distinct: true) .where(prefecture_id: 34)
@post_35 = @q.result(distinct: true) .where(prefecture_id: 35)
@post_36 = @q.result(distinct: true) .where(prefecture_id: 36)
@post_37 = @q.result(distinct: true) .where(prefecture_id: 37)
@post_38 = @q.result(distinct: true) .where(prefecture_id: 38)
@post_39 = @q.result(distinct: true) .where(prefecture_id: 39)
@post_40 = @q.result(distinct: true) .where(prefecture_id: 40)
@post_41 = @q.result(distinct: true) .where(prefecture_id: 41)
@post_42 = @q.result(distinct: true) .where(prefecture_id: 42)
@post_43 = @q.result(distinct: true) .where(prefecture_id: 43)
@post_44 = @q.result(distinct: true) .where(prefecture_id: 44)
@post_45 = @q.result(distinct: true) .where(prefecture_id: 45)
@post_46 = @q.result(distinct: true) .where(prefecture_id: 46)
@post_47 = @q.result(distinct: true) .where(prefecture_id: 47)


  if params[:search1] == nil
    @posts= Post.all.page(params[:page])
   elsif params[:search1] == ''
    @posts= Post.all.page(params[:page])
   else
    @posts = Post.where("prefecture LIKE ? ",'%' + params[:search1] + '%').page(params[:page])
  end
 end

 def detail_search
  @q = Post.ransack(params[:q])
  @posts = @q.result(distinct: true)
  @prefectureName = Address.where('prefecture_id IN(?)', params[:prefecture_id])
end



 def mailform

 end
 



 before_action :authenticate_user!, except: [:index, :index_likes, :index_new, :show, :calendar, :detail_search]

 private
 def post_params
    params.require(:post).permit(:name1, :name2, :month, :day, :detail,
     :image, :image2, :music, :site, :address, :prefecture, :prefecture_id,
      :latitude, :longitude, :date, :start_time, :image1, :image2,
      :title, :details )
 end

 def post_search_params
   params.fetch(:search, {}).permit(:name2, :music, :date_to, :date_from, :prefecture)
 end
end
