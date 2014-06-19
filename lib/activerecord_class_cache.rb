require "activerecord_class_cache/version"
require "activerecord_class_cache/cache_key"

module ActiverecordClassCache
  begin
    require 'rails'

    class Railtie < Rails::Railtie
      initializer 'activerecord_class_cache.insert_into_active_record' do
        ActiveSupport.on_load :active_record do
          ActiveRecord::Base.send(:include, ::ActiverecordClassCache::CacheKey)
        end
      end
    end
  rescue LoadError
    puts "LOAD ERROR"
    ActiveRecord::Base.send(:include, ::ActiverecordClassCache::CacheKey) if defined?(ActiveRecord)
  end
end