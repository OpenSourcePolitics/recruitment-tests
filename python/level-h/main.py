import numpy as np

# def compute_executable_projects(n, participants_votes, project_range):
#     pass


# # #input example for visual tests :
details_set = (2, [(10,5),(1,3)], 2) 


n = details_set[0]
participants_votes = details_set[1]
project_range = details_set[2]

print ("number of participants : " + str(n))
print ("array of votes, per participants : " + str(participants_votes))
print ("number of allocated budget : " + str(project_range))


def counted_votes():
    counting = np.array(participants_votes)
    vote = 0
    i = 0
    result = []
    for tuple in counting:
        vote += tuple[i]
    result.append(vote)
    print (result)


def compute_executable_projects (project_range):
    if project_range == 0:
        print ('No projects, sorry!')
    else:
        counted_votes ()


compute_executable_projects (project_range)


# output :
# number of participants : 2
# array of votes, per participants : [(10, 5), (1, 3)]
# number of allocated budget : 2
# [11]