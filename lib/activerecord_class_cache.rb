require "activerecord_class_cache/version"

mmodule ActiverecordClassCache
  extend ActiveSupport::Concern

  module ClassMethods
    def cache_key
      Digest::MD5.hexdigest "#{maximum(:updated_at).try(:to_i)}-#{count}"
    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecordExtension)