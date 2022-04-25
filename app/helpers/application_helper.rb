module ApplicationHelper
    def default_meta_tags
        {
          site: 'マンドリン演奏会情報サイト',
          description: "ここに説明が来るはず",
          reverse: true,
          separator: '|',
          og: defalut_og,
          twitter: default_twitter_card
        }
      end
      
      private
      
      def defalut_og
        {
          title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
          description: :full_description,   # 上に同じ
          url: request.url,
          image: 'https://example.com/hoge.png'
        }
      end
      
      def default_twitter_card
        {
          card: 'summary_large_image', # または summary
          site: '@buro_gm'            # twitter ID
        }
      end
end
