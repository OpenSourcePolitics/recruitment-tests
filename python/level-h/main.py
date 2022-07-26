def compute_executable_projects(n, participants_votes, project_range):
    """
    Given a number of participants, a list of votes for each project, and a range of projects,
    compute the number of projects that can be executed.
    """

    if n == 0 or project_range == 0:
        return 'No projects, sorry!'

    votes = list(map(list, zip(*participants_votes)))
    sum_votes = [(i+1, sum(votes[i])) for i in range(len(votes))]
        
    # Sort the list of tuples by the second element in each tuple 
    sum_votes.sort(key=lambda x: x[1], reverse = True)
    print(sum_votes)

    # Create a list of the projects that are popular enough to be executed
    popular_projects = []
    for j in range(project_range):
        popular_projects.append(sum_votes[j][0])
    
    return popular_projects

pass
