import numpy as np

# def compute_executable_projects(n, participants_votes, project_range):
#     pass

# # #input :
# details_set = (2, [(10,5),(0,3)], 2) 

# # # expected output
# # # == [1,2]

# n = details_set[0]
# participants_votes = details_set[1]
# project_range = details_set[2]


def compute_executable_projects (n, participants_votes, project_range):
    if project_range == 0:
        return ('No projects, sorry!')
    else:
        return ('Votes : ok')


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
#test.counted_votes()



# class Most_Supported_Project:
# # #Project with the most of votes
#     def __init__ (self, project, vote):
#         self.project = project
#         self.vote = self.counted_votes()

#     def get_best_project (self):
    
