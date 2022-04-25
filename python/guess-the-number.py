import random

fname = input("What is your name? ")
print("Hi,",fname, "I am thinking of a number between 1 and 20")
number = random.randint(1,20)
for retry in range(1,7):
    
    try:
        guess = int(input("Take a Guess. "))
        if guess < number:
            print("Your guess is too low")
        elif guess > number:
            print("Your guess is too high")
        else:
            break
    except:
        print("Only number is allowed")
        
if guess == number:
    print("Good Job", fname, "You guessed my number in", retry, "guesses")
else:
    print("Wrong!", number, "is the correct number")

        
     