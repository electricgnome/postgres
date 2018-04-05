--1
-- SELECT DISTINCT project.name AS project, tech.name AS tech 
--     FROM tech, project, project_uses_tech 
--     WHERE project.id =4 AND project_uses_tech.project_id= 4 AND project_uses_tech.tech_id = tech.id 
--     ORDER BY tech.name;

--2
-- SELECT DISTINCT project.name AS project, tech.name AS tech 
--     FROM tech, project, project_uses_tech 
--     WHERE project.id =4 AND project_uses_tech.project_id= 4 AND project_uses_tech.tech_id = tech.id 
--     ORDER BY tech.name;

--3
-- SELECT tech.id, tech.name FROM tech 
--   LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id 
--   WHERE project_id IS NULL ORDER BY tech.id;

--4
-- SELECT project.name, COUNT(tech_id) AS techs 
--   FROM project_uses_tech 
--   LEFT JOIN project ON project.id =project_uses_tech.project_id 
--   GROUP BY project.name

--5
-- SELECT project.id, project.name FROM project
--   LEFT JOIN project_uses_tech ON project_uses_tech.project_id = project.id 
--   WHERE tech_id IS NULL ORDER BY project.id;

--6
-- SELECT tech.name, COUNT(tech_id) AS projects 
--   FROM project_uses_tech 
--   LEFT JOIN tech ON tech.id =project_uses_tech.tech_id 
--   GROUP BY tech.name

--7
-- SELECT DISTINCT project.id AS project, project.name AS "project name", tech.name AS "tech name", tech.id AS tech 
--   FROM project, project_uses_tech, tech 
--   WHERE project.id=project_uses_tech.project_id AND tech.id = project_uses_tech.tech_id 
--   ORDER BY project.name

--8
-- SELECT DISTINCT project.id AS project, project.name AS "project name", tech.name AS "tech name", tech.id AS tech 
--   FROM project, project_uses_tech, tech 
--   WHERE project.id=project_uses_tech.project_id AND tech.id = project_uses_tech.tech_id AND project.id =9
--   ORDER BY project.name


--9
-- SELECT DISTINCT tech.id, tech.name FROM tech 
--   LEFT JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id 
--   WHERE project_id IS NULL ORDER BY tech.id;

--10


--12
-- SELECT project.name, COUNT(tech_id) AS techs 
--   FROM project_uses_tech 
--   LEFT JOIN project ON project.id =project_uses_tech.project_id 
--   GROUP BY project.name ORDER BY techs

--13
-- SELECT tech.name, COUNT(tech_id) AS projects 
--   FROM project_uses_tech 
--   LEFT JOIN tech ON tech.id =project_uses_tech.tech_id 
--   GROUP BY tech.name ORDER BY projects

--14
