def primes(number: int):
    """Return a list of the first n primes."""

    sieve = [True] * number
    res = []

    for i in range(2, number):
        if sieve[i]:
            res.append(i)
            for j in range(i * i, number, i):
                sieve[j] = False
    return res


print("Hola")

xs = primes(100)
print(xs)
