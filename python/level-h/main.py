import numpy as np
from typing import List, Tuple



# # #input example for visual tests :
details_set = (3, [(2,3,4),(7,10,2),(0,0,0)], 1)

n = details_set[0]
participants_votes = details_set[1]
project_range = details_set[2]


def votes_per_project(n : int, participants_votes : List[Tuple[int, int]], project_range : int)-> List[int]:
    """
    check votes for each project and return the eligible projects depending of project_range
    """
    votes = {}
    for counter, element in enumerate(participants_votes[0]):
        votes[counter + 1] = element

    for next_votes in participants_votes[1:]:
        for counter, element in enumerate(next_votes):
            votes[counter + 1] += element

    print ("votes :", votes)
    rank_by_votes = dict(sorted(votes.items(), key=lambda x:x[1], reverse = True))

    print (list(rank_by_votes.keys())[:project_range])


def compute_executable_projects (n, participants_votes, project_range):
    if project_range == 0:
        print ('No projects, sorry!')
    else:
        votes_per_project (n, participants_votes, project_range)

compute_executable_projects (n, participants_votes, project_range)