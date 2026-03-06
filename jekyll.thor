require "stringex"
require "fileutils"

class Jekyll < Thor
  desc "new", "create a new localized post"
  method_option :editor, :default => "subl"
  method_option :language, :aliases => "-l", :default => "en"

  def new(*title)
    title = title.join(" ")
    language = options[:language].to_s.downcase
    valid_languages = %w[en es pt]

    if title.empty?
      abort("Please provide a post title.")
    end

    unless valid_languages.include?(language)
      abort("Invalid language '#{language}'. Use one of: #{valid_languages.join(', ')}")
    end

    date = Time.now.strftime('%Y-%m-%d')
    slug = title.to_url
    dir = "_posts/#{language}"
    filename = "#{dir}/#{date}-#{slug}.md"

    FileUtils.mkdir_p(dir)

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
      post.puts "description: \"\""
      post.puts "language: #{language}"
      post.puts "language_reference: #{slug}"
      post.puts "home_order: 99"
      post.puts "categories: post"
      post.puts "published: true"
      post.puts "tags:"
      post.puts " -"
      post.puts "---"
    end

    system(options[:editor], filename)
  end
end
