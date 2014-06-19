module ActiverecordClassCache
  module CacheKey
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def cache_key
        Digest::MD5.hexdigest "#{maximum(:updated_at).try(:to_i)}-#{count}"
      end
    end
  end
end