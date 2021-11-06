import numpy as np

# def compute_executable_projects(n, participants_votes, project_range):
#     pass

#input :
details_set = (2, [(10,5),(0,3)],2) 

# expected output
# == [1,2]

number_of_participants = details_set[0]
participants_votes = details_set[1]
number_of_supported_projects = details_set[2]


class Vote:

    def __init__ (self):
        self.number_of_participants = number_of_participants
        self.participants_votes = participants_votes

    def isChecked (self):
        self.number_of_participants == len(self.participants_votes)
        return 

details_set = Vote
print (bool(details_set.isChecked))


class Project:

    def __init__ (self, rank):
        self.rank = rank

    def counted_votes(self):
        counting = np.array(participants_votes)
        vote = 0
        i = self.rank -1
        for tuple in counting:
                vote += tuple[i]
        return (vote)
        

test = Project (2)
print(test.counted_votes())

# output :
# 8

# class Most_Supported_Project:
# # #Project with the most of votes
#     def __init__ (self, project, vote):
#         self.project = project
#         self.vote = self.counted_votes()

#     def get_best_project (self):

# def compute_executable_projects (n, participants_votes, project_range):
# # n = number of particpants
    
    
#     set_votes = (tuple de votes)
#     #tuples are ordered and unchangeable data

#     project_range = number 



#     if n != len(participants_votes):
#         print ("It seems that we don't get all the votes !")

#     if project_range == 0:
#         print ("No projects, sorry")
    
