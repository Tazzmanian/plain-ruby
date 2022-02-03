def convert_to_euro(dollars) 
  if dollars.is_a?(Numeric)
    dollars * 0.95
  end
end

def convert_to_pesos(dollars) 
  if dollars.is_a?(Numeric)
    dollars * 20.67
  end
end

def convert_to_rupees(dollars) 
  if dollars.is_a?(Numeric)
    dollars * 68.13
  end
end

p convert_to_euro(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)

##################

def convert_to_euro1(dollars) 
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos1(dollars) 
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees1(dollars) 
  dollars * 68.13 if dollars.is_a?(Numeric)
end

p convert_to_euro1(1000)
p convert_to_pesos1(1000)
p convert_to_rupees1(1000)

##############

def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

p convert(1000, "euro") {|dollars| dollars * 0.95}
p convert(1000, "pesos") {|dollars| dollars * 20.67}
p convert(1000, "rupees") {|dollars| dollars * 68.13}


###################### Final #######################
to_euros = lambda {|dollars| dollars * 0.95}
to_pesos = lambda {|dollars| dollars * 20.67}
to_rupees = lambda {|dollars| dollars * 68.13}

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros) 
p convert(1000, to_pesos)
p convert(1000, to_rupees)