class Video < ActiveRecord::Base
  auto_html_for :url do
      youtube(:width => 270, :height => 180)
      link :target => "_blank", :rel => "nofollow"
      simple_format
    end
end
