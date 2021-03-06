lights = client.lights
               .select  { |l| l.name =~ /JSL Light/ }
               .sort_by { |l| l.name[/\d+/].to_i }

l1, l2, l3, l4, l5, l6, l7, l8, l9, l10 = lights

top    = [l2, l1, l7, l8]
bottom = [l3, l4, l5, l6]
left   = [l5, l6, l7, l8, l9]
right  = [l1, l2, l3, l4, l10]
middle = [l9, l10]
ring   = lights - middle
evens  = [l2, l4, l6, l8, l10]
odds   = lights - evens
