Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/news' ) 
  extension Awestruct::Extensions::Paginator.new(:posts, '/news/index', :per_page => 5)
  extension Awestruct::Extensions::Atomizer.new(:posts, '/news/atom.xml', :feed_title=>'dereel.com.au')
  extension Awestruct::Extensions::Disqus.new
  transformer Awestruct::Extensions::Minify.new([:js])
  helper Awestruct::Extensions::GoogleAnalytics
  helper Awestruct::Extensions::Partial
end

