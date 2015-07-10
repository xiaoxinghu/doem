module Bricker
  # command line interface
  class Cli
    def self.run(args)
      unless args.size == 1
        puts 'Syntax: kiba your-script.etl'
        exit(-1)
      end
      filename = args[0]
      instruction = Instruction.from_file filename
      Bricker.run instruction
    end
  end
end
