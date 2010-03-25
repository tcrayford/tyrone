set :haml => {:format => :html5}

helpers do
  def mockup_path(mockup)
    "/mockups/#{mockup.to_s.gsub(' ','_')}"
  end
end

get '/' do
  use_in_file_templates!
  @mockups = Dir.glob(File.join(options.views, '*.haml')).map do |mockup|
    File.basename(mockup,'.*').gsub('_',' ')
  end.reject {|file| file == 'layout'}
  haml :index, :layout => false
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
          :font-size 14px
          :line-height 20px
          :color #999
          a
            :text-decoration none
            :color #333
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
      - if @mockups.empty?
        There are no mockups yet. Add one to <code>#{File.expand_path(options.views)}</code>.
      - @mockups.each do |mockup|
        %li
          %a{:href => mockup_path(mockup)}= mockup
    %a.footer{:href => 'http://github.com/chrislloyd/tyrone'} tyrone luvs ya.
