import numpy as np

# def compute_executable_projects(n, participants_votes, project_range):
#     pass

# EXAMPLES INPUT AND RESULTS
# (2, [(10,5),(0,3)],2) == [1,2]
# (3, [(2,3,4),(7,10,2),(0,0,0)], 1) == [2]
# (1, [(8,9)], 0) == 'No projects, sorry!'

# DETAILS : [(votes of participant 1), (votes of participants 2), ...]

participants_votes = [(10,5),(2,3),(3,2)]


class Project:
# Project box with rank and votes per participants
    def __init__ (self, rank):
        self.rank = rank
        self.votes = self.counted_votes()

# for each tuple in array particpants_votes
# pick the vote of rank-1   
    def counted_votes(self):
        counting = np.array(participants_votes)
        vote = 0
        i = self.rank -1
        
        for tuple in counting:
            #for set in tuple:
                vote += tuple[i]
                print (vote)

test = Project (2)
test.counted_votes()

# output :
# 5
# 8
# 10
# 5
# 8
# 10


# class Most_Supported_Project:
# #Project with the most of votes
#     def __init__ (self):



# def compute_executable_projects (n, participants_votes, project_range):
# # n = number of particpants
    
    
#     set_votes = (tuple de votes)
#     #tuples are ordered and unchangeable data

#     project_range = number 



#     if n != len(participants_votes):
#         print ("It seems that we don't get all the votes !")

#     if project_range == 0:
#         print ("No projects, sorry")
    
