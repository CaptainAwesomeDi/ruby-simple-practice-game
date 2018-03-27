class Question
    attr_reader :number_a,:number_b

    @@answer = nil
    def initialize()
        @number_a = Random.new
        @number_b = Random.new
    end

    def make_new_question (player)
        a = @number_a.rand(1..20)
        b = @number_b.rand(1..20)
        @@answer = a + b
        puts "#{player.name}: What does #{a} plus #{b} equal?"
    end

    def check_answer (player,input)
        
        if input.to_i == @@answer
            puts "#{player.name}: Yes! you are correct."
        else 
            player.reduce_life
            puts "#{player.name}: Seriously? No!"
        end
    end
    

end
