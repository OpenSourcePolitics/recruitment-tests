def get_index(alistofint,project_range):
    res = dict(zip(range(1,len(alistofint)+1), alistofint))
    res = sorted(res, key=res.get)
    res.reverse()
    return res[:project_range]

def compute_executable_projects(n, participants_votes, project_range):
    if project_range != 0:
        result = list(participants_votes[0])
        for i in range(1, len(participants_votes)):
            for j in range(0, len(result)):
                result[j] += participants_votes[i][j]
        finalresult = get_index(result,project_range)
        return finalresult
    else:
        return "No projects, sorry!"