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
    %title Mockups
    %style{:type => 'text/css', :media => 'screen'}
      :sass
        body
          :font-family Helvetica
  %body
    %h1 Mockups
    %ul
      - @mockups.each do |mockup|
        %li
          %a{:href => mockup_path(mockup)}= mockup
