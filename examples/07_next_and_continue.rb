require 'byebug'
require 'csv'
HEADERS = %w[name,surname,age,city,country].freeze

# use `step` and/or `next` to identify the errors in the code and fix them until
# you see the "WOW" text displayed by `process_row` for every row in the CSV
# you can also use `break` to set a breakpoint in the loop
def run
  debugger
  csv = CSV.parse(csv_content)
  parse_headers(csv[0])
  csv[1..-1].each do |row|
    parse_row(row)
    process_row(row)
  end
rescue Exception => e
  puts e
  # some error handling like informing sentry, out of scope of this workshop
  false
end

def csv_content
  @csv_content ||= <<~CSV
    name,surname,age,country,city
    Fulanito,Perez Lopez,25,Entre Pinto y Valdemoro,Spain
    John,Doe,42,Tucson,Arizona,USA
    Klaus,Kartoffel,3O,Musterstadt,Deutschland
  CSV
end

def parse_headers(headers)
  raise 'headers are wrong' if headers != HEADERS
end

def parse_row(row)
  raise 'row has an unexpected number of fields' if row.length != HEADERS.length
end

def process_row(row)
  raise 'Only for adults!' if row[2].to_i <= 21
  puts "WOW #{row[0]} #{row[1]} from #{row[3]} in #{row[4]}! You are an adult everywhere in the world!"
end

run
