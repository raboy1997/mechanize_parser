require 'mechanize'
require 'open-uri'
require 'nokogiri'
task :parser => :environment do

  url = 'https://news.ycombinator.com/'

  doc = Mechanize.new

  doc.get(url)

  Feed.delete_all

  5.times do

    items_list = doc.page.search('.itemlist')

    items_list.search('.athing').map do |item|

      record = item.search('td.title')[1].children[0]

      @feeds = Feed.new
      @feeds.url = record.attributes['href'].value
      @feeds.title = record.children.text
      @feeds.autor = item.next.search('.hnuser')[0].children.text unless item.next.search('.hnuser')[0].nil?

      @feeds.save
    end

    doc.page.link_with(text: 'More').click

  end

end


