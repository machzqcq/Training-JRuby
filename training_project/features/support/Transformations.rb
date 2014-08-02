Transform /^(-?\d+)$/ do |number|
  number.to_i
end

Transform /([^\$\"]*)/ do |arg|
  arg[/[\d\.]+/].to_i
end
