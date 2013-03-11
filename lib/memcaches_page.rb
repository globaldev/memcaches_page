module MemcachesPage
  extend ActiveSupport::Concern
  module ClassMethods
    def memcaches_page(*actions)
      return unless perform_caching
      options = actions.extract_options!

      after_filter({:only => actions}.merge(options)) do |c|
        c.memcache_page
      end
    end

    def memcache_page(content, path, options={})
      return unless perform_caching

      Rails.cache.write path.gsub('%', '%25'), content, options.merge(raw: true)
    end
  end

  def memcache_page(options = {})
    return unless self.class.perform_caching && caching_allowed? && !request.params.key?('no-cache')
    self.class.memcache_page(response.body, request.fullpath, options)
  end
end
