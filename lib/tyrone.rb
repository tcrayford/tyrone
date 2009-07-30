gem 'haml', '2.2.2'; require 'haml'; require 'sass'

helpers do
  def mockup_path(mockup)
    "/mockups/#{mockup.gsub(' ','_')}"
  end
end

get '/' do
  use_in_file_templates!
  @mockups = Dir.glob(File.join(options.views, '*.haml')).map do |mockup|
    File.basename(mockup,'.*').gsub('_',' ')
  end
  haml :index
end

get '/mockups/:mockup' do |mockup|
  haml mockup.to_sym
end

__END__

@@index
!!!
%html
  %head
    %title mockups
    %style{:type => 'text/css', :media => 'screen'}
      :sass
        
        *
          :margin 0
          :padding 0
        body
          :margin 40px
          :font-family Helvetica, sans-serif
        h1
          :font-size 24px
          :line-height 40px
          :margin-bottom 20px
          :text-transform lowercase
        ul
          :color #CCC
          :font-size 12px
          :line-height 20px
          a
            :text-decoration none
            :font-size 14px
            :color #333
            :line-height 20px
            :text-transform lowercase
            &:hover
              :border-bottom 1px solid #333
        .footer
          :font-size 11px
          :line-height 20px
          :margin-top 60px
          :color #CCC
          :display block
          :text-decoration none
  %body
    %h1 Mockups
    %ul
      - @mockups.each do |mockup|
        %li
          %a{:href => mockup_path(mockup)}= mockup
    %a.footer{:href => 'http://github.com/chrislloyd/tyrone'} tyrone luvs ya.
