class BST

    def initialize(data)
        @data = data
        @left 
        @right
    end

    def data
        @data 
    end

    def insert(data)
        if data <= @data 
            if @left != nil
                @left.insert(data)
            else 
                @left = BST.new(data)
            end
        else 
            if @right != nil
                @right.insert(data)
            else 
                @right = BST.new(data)
            end
        end
    end

    def left
        @left
    end

    def right
        @right
    end

    def each(output=Array.new)
        if @left != nil 
            output = @left.each(output)
        end
        if @data
            output.push(self.data) 
        end
        if @right != nil 
            output = @right.each(output)
        end
        output
    end

end