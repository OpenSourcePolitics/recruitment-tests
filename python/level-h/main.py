import numpy as np

# def compute_executable_projects(n, participants_votes, project_range):
#     pass


# # #input example for visual tests :
details_set = (3, [(2,3,4),(7,10,2),(0,0,0)], 1)


n = details_set[0]
participants_votes = details_set[1]
project_range = details_set[2]

print ("number of participants : ", n)
print ("array of votes, per participants : ", participants_votes)
print ("number of allocated budget : ", project_range)


def votes_per_project(participants_votes, n):
    votes_per_participant = np.array(participants_votes)
    print ("these are the votes of each participant : ", votes_per_participant)

    i = 0
    result = []

    while i <= (n-1):
        vote = 0
        for each_tuple in votes_per_participant:            
            vote += each_tuple[i]
        result.append(vote)
        i +=1

    print ("these are the vote for each project : ", result)
    
    rank = list(range(1,n+1))
    organised_results = dict(zip(rank, result))
    print ("this is the dico :", organised_results)


def compute_executable_projects (project_range):
    if project_range == 0:
        print ('No projects, sorry!')
    else:
        votes_per_project (participants_votes, n)


compute_executable_projects (project_range)
