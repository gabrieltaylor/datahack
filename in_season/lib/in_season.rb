require "in_season/version"

module InSeason
  if defined? ::Rails::Engine
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  end
end
