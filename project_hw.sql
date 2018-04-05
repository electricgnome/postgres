-- SELECT DISTINCT project.id AS project, project.name, tech.name, tech.id AS tech FROM project, project_uses_tech, tech WHERE project.id=project_uses_tech.project_id AND tech.id = project_uses_tech.tech_id ORDER BY project.name

-- SELECT DISTINCT project.name AS project, tech.name AS tech FROM tech, project, project_uses_tech WHERE project.id =4 AND project_uses_tech.project_id= 4 AND project_uses_tech.tech_id = tech.id ORDER BY tech.name;
