require 'open-uri'

def embiggen(str)
  str = "#{str}!!!"
  str = str.upcase
  return str
end

#puts( embiggen("Hello there"))

def add_strings(str1, str2)
  return (str1 + str2).capitalize
end

#p add_strings('Bob', 'Marry')

def triple_adder(num1, num2, num3)
  return (num1 + num2 + num3).to_s + '!'
end

#puts triple_adder(1,2,3)


def just_count_tags(page, tag)
  #pattern = /<#{tag}\b/
  #tags = page.scan(pattern)
  #return tags.length
  return page.scan(/<#{tag}\b/).length
end

def fetch_page(url)
  return open(url).read
end

sites = [ "https://www.wsj.com", "https://www.nytimes.com", "https://www.ft.com" ]
tags = ["div", "h1", "h2", "img", "p"]

sites.each do |url|
  puts "#{url} has:"
  page = fetch_page(url)
  tags.each do |tag|
    tag_count = just_count_tags(page, tag)
    puts "\t - #{tag_count} <#{tag}> tags"
  end
end
