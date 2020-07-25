package ro.tefacprogramator.m4.finalm4.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ro.tefacprogramator.m4.finalm4.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
    
}