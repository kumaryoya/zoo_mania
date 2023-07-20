module ApplicationHelper
  def default_meta_tags
    {
      site: 'ZooMania',
      title: '動物園情報提供サービス',
      reverse: true,
      charset: 'utf-8',
      description: '動物園に行こう！',
      keywords: '動物,動物園,動物園一覧',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@RYOYA_RUNTEQ44',
        image: image_url('ogp.png')
      }
    }
  end
end
