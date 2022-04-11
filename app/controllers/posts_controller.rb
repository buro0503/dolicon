class PostsController < ApplicationController

 def index
  if params[:search1] == nil
    @posts= Post.all.page(params[:page]).per(10).where("start_time > ?",Date.today).order(date: :asc)
  elsif params[:search1] == ''
    @posts= Post.all.page(params[:page]).per(10).where("start_time > ?",Date.today).order(date: :asc)
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

 def javascript
 
 end



 before_action :authenticate_user!, except: [:index, :index_likes, :index_new, :show, :calendar]

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
