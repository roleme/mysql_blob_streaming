Gem::Specification.new do |spec|
  spec.name = 'mysql_blob_streaming'
  spec.version = %x(git describe --always).chomp.gsub(/-([0-9]+)-g/, '.\\1.')
  spec.summary = 'A blob streaming extension for the native Ruby-MySQL2 adapter'
  spec.author = 'Infopark AG'
  spec.homepage = 'http://www.infopark.de/'
  spec.email = 'info@infopark.de'
  spec.requirements << 'infopark_fiona_connector'
  spec.description = <<-EOF
    This GEM is required by the infopark_fiona_connector when using MySQL.
  EOF
  spec.license = 'MIT'

  spec.add_dependency 'mysql2', '>= 0.3.16', '< 0.4.0'
  spec.required_ruby_version = '>=2.0.0'

  spec.files = Dir["lib/**/*.rb", "ext/**/*.{c,h,rb}", "README.markdown"]
  spec.extensions = ['ext/mysql_blob_streaming/extconf.rb']

  spec.has_rdoc = true
  spec.extra_rdoc_files = Dir['README*']
  spec.rdoc_options = ['--main', Dir['README*'].first]
end
