module Kebab
  extend self
  VERSION = {{ `shards version __DIR__`.chomp.stringify }}
end

class String
  def kebabcase
    self.underscore.gsub("_", "-")
  end

  def underscore
    if self.includes?("-")
      return self.gsub("-", "_").underscore
    end
    previous_def
  end

  def camelcase
    if self.includes?("-")
      return self.gsub("-", "_").camelcase
    end
    previous_def
  end
end
