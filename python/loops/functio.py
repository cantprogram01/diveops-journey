import random

def quotes(num):
    if num == 1:
        return("I have always believed that each man makes his own happiness and is responsible for his own problems. It is a simple philosophy.")
    elif num == 2:
        return("When we have respect for ourselves and others, we gravitate towards connections that encourage that. ")
    elif num == 3:
        return("Anger is the ultimate destroyer of your own peace of mind.")
    elif num == 4:
        return("A man should have the aim and the determination to be honest and upright and sincere in all that he undertakes. If he adds persistency to this he can hardly help being successful")
    elif num == 5:
        return("Only one thing is ever guaranteed, that is that you will definitely not achieve the goal if you don't take the shot.")
    elif num == 6:
        return("Don't be afraid. Be focused. Be determined. Be hopeful. Be empowered")
    elif num == 7:
        return("The fact is that grief today is a family matter as much a s it is an individual one.")
    elif num == 8:
        return("Children really brighten up a household. They never turn the lights off.")
    elif num == 9:
        return("No one would have crossed the ocean if he could have gotten off the ship in the storm.")
    elif num == 10:
        return("Congratulations! today is your day. You're off to Great Places! You're off and away.")
    elif num > 10:
        return(num ," not in range")
print(quotes(int(input("Enter number from 1 - 10 "))))