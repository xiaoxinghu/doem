require 'datacraft'

module Datacraft
  # command line interface
  class Cli < Thor
    desc 'build [INSTRUCTION_FILE]', 'build the data by instruction'
    def build(filename)
      instruction = Instruction.from_file filename
      Datacraft.run instruction
    end

    desc 'check [INSTRUCTION_FILE]',
         'evaluate the instruction without running it'
    def check(filename)
      begin
        Instruction.from_file filename
        puts 'You are ready to go.'
      rescue InvalidInstruction => e
        puts e
      end
    end
  end
end
