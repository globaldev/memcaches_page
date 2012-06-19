module MemcachesPage
  extend ActiveSupport::Concern
  module ClassMethods
    def cache_page(content, path)
      return unless perform_caching and Rails.cache.class.to_s == 'ActiveSupport::Cache::DalliStore'
      
      namespace = Rails.configuration.cache_store[2][:namespace] rescue nil
      namespace ||= ""

      cache = Rails.cache.instance_variable_get(:@data)
      cache.set namespace + path.gsub('%', '%25'), content, nil, raw: true
    end
  end
  
  def cache_page(content = nil, options = nil)
    return unless self.class.perform_caching && caching_allowed?
    self.class.cache_page(content || response.body, request.fullpath)
  end
end