=begin
input string
return nil
output is

+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

= ->>MSG
+-#{}-+
| #{} |
| #{} |
| #{} |
+-#{}-+
MSG
=end

def print_in_box(message)
  message = message[0..80]
  length = message.length
  dashes = '-' * length
  spaces = ' ' * length
  puts message_in_a_box = <<MSG
+-#{dashes}-+
| #{spaces} |
| #{message} |
| #{spaces} |
+-#{dashes}-+
MSG
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.')

print_in_box('')
