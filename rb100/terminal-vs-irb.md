# Terminal vs irb

## How do you issue shell commands in the terminal?

## How do you run Ruby code in a file?

1. Create the file `example.rb` and write the code
2. You can write some hello world code, `puts "Hello world"`
3. Save the file and go back to the shell
4. Type in the command `ruby example.rb`. The shell is going to output the hello world message.

## How do you issue Ruby code in irb?

1. Type in the command `irb`
2. Type in the Ruby command in the interactive Ruby program

  ```rb
  irb(main):001:0> puts "Hello world"
  Hello world
  => nil # This is saying that there was no return value for the command.
  ```
3. To exit the irb, just type in `exit`.
  