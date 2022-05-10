module ApplicationHelper
  
    def default_meta_tags
        {
          site: 'マンドリン演奏会情報サイト',
          description: "全国のマンドリンの演奏会情報を投稿・閲覧できるサイトです",
          reverse: true,
          separator: '|',
          og: defalut_og,
          twitter: default_twitter_card
          image: '/twitter_image.png'
        }
      end
      
      private
      
      def defalut_og
        {
          title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
          description: :full_description,   # 上に同じ
          url: request.url,
          image: '/twitter_image.png'
        }
      end
      
      def default_twitter_card
        {
          card: 'summary_large_image', # または summary
          site: '@buro_gm',            # twitter ID
          title: 'マンドリン演奏会情報',
          description: '全国のマンドリンの演奏会情報を投稿・閲覧できるサイト',
          image: '/twitter_image.png'
        }
      end
end
