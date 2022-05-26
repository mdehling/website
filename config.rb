Time.zone = "America/Los_Angeles"


Haml::TempleEngine.disable_option_validator!


set :layout, "page"


activate :asciidoc do |asciidoc|
  asciidoc.attributes = ['source-highlighter=rouge']
  asciidoc.template_dirs = ['asciidoctor-templates']
  asciidoc.template_engine = :haml
end


activate :blog do |blog|
  blog.prefix = "blog"
  blog.sources = "{title}.html"
  blog.permalink = "{title}.html"
  blog.layout = "post"

  blog.default_extension = ".adoc"
end


activate :livereload


activate :directory_indexes
