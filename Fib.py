nterms = 10
a = 0
b = 1
count = 0
if nterms<=0:
    print("Please enter positive number")
elif nterms ==1:
    print("Fibonacci series upto",nterms,":")
    print(n1)
else:
    print("Fibonacci series upto",nterms,":")
    while count < nterms:
       print(a)
       nth = a + b
       # update values
       a = b
       b = nth
       count += 1