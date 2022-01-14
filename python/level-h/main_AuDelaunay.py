import numpy as np

# #input (visual test):
details_set = (3, [(10,5),(0,3)], 0) 


n = details_set[0]
participants_votes = details_set[1]
project_range = details_set[2]


# code will begin with def isChecked, to be sure that : 
# - number of allocated budget is decided
# - we well received all votes

# if these 2 statements are ok, we proceed def isValidate.
# by input, we can check vote by project.


class Project:

    def __init__ (self, rank):
        self.rank = rank

    def counted_votes(self):
        counting = np.array(participants_votes)
        vote = 0
        i = self.rank -1
        for tuple in counting:
                vote += tuple[i]
        print (vote) 


def isValidate(): 
    new_project = input ('What is the name of the project that you want to check ?')
    rank = input ('What is its number ?')
    rank = int(rank)
    new_project = Project (rank)
    
    if rank > len(participants_votes):
        print ('This project has not been put to a vote.')
    else:
        print ('Votes for this project :')
        new_project.counted_votes()


def isChecked():
    if project_range == 0:
        print ('No project, sorry !') 
    elif n != len(participants_votes):
        print ('WARNING : there is a difference between the number of participants and the received sets of votes !')    
    else:
        isValidate ()

isChecked ()

