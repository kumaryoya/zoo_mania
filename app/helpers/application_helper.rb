module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'ZooMania'
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def default_meta_tags
    {
      site: 'ZooMania',
      title: "ZooMania",
      reverse: true,
      charset: 'utf-8',
      description: 'みんなで動物園に行こう！',
      keywords: '動物園,動物園一覧,動物',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.jpg'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@RYOYA_RUNTEQ44',
        image: image_url('ogp.jpg')
      }
    }
  end
end
