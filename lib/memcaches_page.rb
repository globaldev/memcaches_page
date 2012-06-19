module MemcachesPage
  extend ActiveSupport::Concern
  module ClassMethods
    def cache_page(content, path)
      return unless perform_caching
      
      Rails.cache.write path.gsub('%', '%25'), content, raw: true
    end
  end
  
  def cache_page(content = nil, options = nil)
    return unless self.class.perform_caching && caching_allowed?
    self.class.cache_page(content || response.body, request.fullpath)
  end
end