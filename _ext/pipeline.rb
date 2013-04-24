Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/news' ) 
  helper Awestruct::Extensions::GoogleAnalytics
end

