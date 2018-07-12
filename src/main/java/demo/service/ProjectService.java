package demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demo.dto.ProjectDto;
import demo.entity.Project;
import demo.repository.ProjectRepository;

@Service
public class ProjectService {

    @Autowired
    private ProjectRepository projectRepository;

    public List<ProjectDto> getList(){

        List<ProjectDto> list = new ArrayList<>();

        projectRepository.findAll(new Sort(Sort.Direction.DESC,"id")).forEach(projectDto ->{
            ProjectDto dto = new ProjectDto();
            BeanUtils.copyProperties(projectDto, dto);
            list.add(dto);
        });

        return list;
    }

    @Transactional
    public int resist(ProjectDto projectDto) {
        Project project = new Project();
        project.setName(projectDto.getName());
        projectRepository.save(project);
        return project.getId();
    }
}
