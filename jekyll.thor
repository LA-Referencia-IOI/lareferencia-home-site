require "stringex"
require "fileutils"

class Jekyll < Thor
  desc "new", "create a new localized content item"
  method_option :editor, :default => "subl"
  method_option :language, :aliases => "-l", :default => "en"
  method_option :type, :aliases => "-t", :default => "post"

  def new(*title_parts)
    title = title_parts.join(" ").strip
    language = options[:language].to_s.downcase
    type = options[:type].to_s.downcase

    valid_languages = %w[en es pt]
    valid_types = %w[post news event home_card]

    abort("Please provide a title.") if title.empty?
    abort("Invalid language '#{language}'. Use: #{valid_languages.join(', ')}") unless valid_languages.include?(language)
    abort("Invalid type '#{type}'. Use: #{valid_types.join(', ')}") unless valid_types.include?(type)

    now = Time.now
    date = now.strftime("%Y-%m-%d")
    slug = title.to_url
    filename = build_filename(type, language, date, slug)

    FileUtils.mkdir_p(File.dirname(filename))
    abort("#{filename} already exists!") if File.exist?(filename)

    puts "Creating new #{type}: #{filename}"
    write_content_file(filename, type, title, language, slug, now)
    system(options[:editor], filename)
  end

  private

  def build_filename(type, language, date, slug)
    case type
    when "post" then "_posts/#{language}/#{date}-#{slug}.md"
    when "news" then "_news/#{language}/#{slug}.md"
    when "event" then "_events/#{language}/#{slug}.md"
    when "home_card" then "_home_cards/#{language}/#{slug}.md"
    end
  end

  def write_content_file(path, type, title, language, slug, now)
    File.open(path, "w") do |f|
      f.puts "---"
      case type
      when "post"
        f.puts "layout: post"
        f.puts "title: \"#{escape(title)}\""
        f.puts "date: #{now.strftime('%Y-%m-%d %H:%M:%S %z')}"
        f.puts "description: \"\""
        f.puts "language: #{language}"
        f.puts "language_reference: #{slug}"
        f.puts "home_order: 99"
        f.puts "categories: post"
        f.puts "published: true"
      when "news"
        f.puts "title: \"#{escape(title)}\""
        f.puts "date: #{now.strftime('%Y-%m-%d %H:%M:%S %z')}"
        f.puts "summary: \"\""
        f.puts "language: #{language}"
        f.puts "language_reference: #{slug}"
        f.puts "published: true"
      when "event"
        f.puts "title: \"#{escape(title)}\""
        f.puts "date: #{now.strftime('%Y-%m-%d %H:%M:%S %z')}"
        f.puts "event_start: #{now.strftime('%Y-%m-%d')}"
        f.puts "event_end: #{now.strftime('%Y-%m-%d')}"
        f.puts "location: \"\""
        f.puts "summary: \"\""
        f.puts "language: #{language}"
        f.puts "language_reference: #{slug}"
        f.puts "published: true"
      when "home_card"
        f.puts "title: \"#{escape(title)}\""
        f.puts "summary: \"\""
        f.puts "url: \"/#{language}/home\""
        f.puts "cta_label: \"Open\""
        f.puts "featured: true"
        f.puts "order: 999"
        f.puts "language: #{language}"
        f.puts "language_reference: #{slug}"
        f.puts "published: true"
      end
      f.puts "---"
      f.puts
      f.puts "Replace this content."
    end
  end

  def escape(value)
    value.gsub(/&/, "&amp;")
  end
end
