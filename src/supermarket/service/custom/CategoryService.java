/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package supermarket.service.custom;

import java.util.List;
import supermarket.dto.CategoryDto;
import supermarket.dto.ItemDto;
import supermarket.service.SuperService;

/**
 *
 * @author Sanjaya Prasad
 */
public interface CategoryService extends SuperService {

    String saveCategory(CategoryDto categoryDto) throws Exception;

    String updateCategory(CategoryDto categoryDto) throws Exception;

    String deleteCategory(CategoryDto categoryDto) throws Exception;

    CategoryDto getCategory(String id) throws Exception;

    List<CategoryDto> getAll() throws Exception;
}
