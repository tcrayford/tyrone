module Tyrone
  extend self

  def version
    '0.4.1'
  end

  def templates
    File.join(File.dirname(__FILE__),'..','templates')
  end
end
