class Fixnum
  define_method(:change) do
    quarters = self.-(self.%(25))./(25)
    number_of_quarters = quarters
    run_off = self.%(25)
    dimes = run_off.-(run_off.%(10))./(10)
    run_off = run_off.%(10)
    number_of_dimes = dimes
    nickels = run_off.-(run_off.%(5))./(5)
    run_off = run_off.%(5)
    number_of_nickels = nickels
    number_of_pennies = run_off
    result = "Your change is #{number_of_quarters} quarters, #{number_of_dimes} dimes, #{number_of_nickels} nickels, and #{number_of_pennies} pennies"
    result
  end
end
