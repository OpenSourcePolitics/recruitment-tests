def compute_executable_projects(n, participants_votes, project_range):
	if 0 in (n, project_range):
		return 'No projects, sorry!'
	else :
		unzipped_list = list(zip(*participants_votes)) 
		liste_notes=[]
		for i in unzipped_list:
		    liste_notes.append(sum(i))
		liste_notes[:project_range]
		liste_projets=[]
		for i in range(len(liste_notes)):
		    liste_projets.append(i+1)
	   
		liste_notes_finales=[]
		liste_finale=[]
		for j in range(n):
		    index_aot=liste_notes.index(max(liste_notes))
		    liste_notes_finales.append(liste_notes.pop(index_aot))
		    liste_finale.append(liste_projets.pop(index_aot))
		    
		return liste_finale[:project_range]

    
