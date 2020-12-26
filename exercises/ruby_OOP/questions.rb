=begin
Is there a reason to you would use
```ruby
def rename(new_name)
  self.name = new_name
end
```
instead of?
```ruby
def rename(new_name)
  @name = new_name
end
```
Use the interface you define
More flexibily, future options for security

=end