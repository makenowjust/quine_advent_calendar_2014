tmpl = File.read("adventar-logo.txt").gsub(/\S/, "#").chars.map{|c|c!="\n"?c*2:c}.to_a.flatten.join.split(/\n/).join("\n")
puts tmpl
puts tmpl.gsub(/\s/,"").size
src = File.read("original.py").gsub(/    /,"\t").gsub(/ /,"\t").inspect
puts src
puts src.size

header = %q{s=[}
footer = %q{];exec(''.join(c.replace(' ','') for c in s))}

body = ""
until src == nil
  if tmpl.empty?
    body += src
    src = ""
  end

  t = tmpl[0]
  tmpl = tmpl[1..-1]
  if t == " "
    body << " "
  elsif t == "\n"
    src = "\"" + src
    body << "\",\n"
  else
    c = src[0].to_s
    src = src[1..-1]
    if c == "\\"
      c += src[0].to_s
      src = src[1..-1]
      t = tmpl[0]
      tmpl = tmpl[1..-1]
      if t == "\n"
        body << c << "\",\n"
        src = "\"" + src
      else
        body << c
      end
    else
      body << c
    end
  end
end
body << ","

puts header
puts body
puts footer

File.write "quine.py", "#{header}\n#{body}\n#{footer}\n"
