class C
    def public_method
        self.private_method
        # private_method <= It's a right call.
    end

    private

    def private_method; end
end

C.new.public_method # <= Raise NoMethodError.
