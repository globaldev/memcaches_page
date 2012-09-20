module MemcachesPage
  extend ActiveSupport::Concern
  module ClassMethods
    def cache_page(content, path, options={})
      return unless perform_caching

      Rails.cache.write path.gsub('%', '%25'), content, options.merge(raw: true)
    end
  end

  def cache_page(content = nil, options = {})
    return unless self.class.perform_caching && caching_allowed? && !request.params.key?('no-cache')
    self.class.cache_page(content || response.body, request.fullpath, options)
  end
end
