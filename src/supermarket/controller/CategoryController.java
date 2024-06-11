/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.controller;

import java.util.List;
import supermarket.dto.CategoryDto;
import supermarket.service.ServiceFactory;
import supermarket.service.custom.CategoryService;

/**
 *
 * @author Sanjaya Prasad
 */
public class CategoryController {

    private CategoryService categoryService = (CategoryService) ServiceFactory.getInstance().getService(ServiceFactory.ServiceType.ITEM_CATEGORY);

    public String saveCategory(CategoryDto categoryDto) throws Exception {
        return categoryService.saveCategory(categoryDto);
    }

    public List<CategoryDto> getAll() throws Exception {
        return categoryService.getAll();
    }

    public CategoryDto searchCategory(String id) throws Exception {
        return categoryService.getCategory(id);
    }

    public String updateCategory(CategoryDto categoryDto) throws Exception {
        return categoryService.updateCategory(categoryDto);
    }

    public String deleteCategory(CategoryDto categoryDto) throws Exception {
        return categoryService.deleteCategory(categoryDto);
    }
}
