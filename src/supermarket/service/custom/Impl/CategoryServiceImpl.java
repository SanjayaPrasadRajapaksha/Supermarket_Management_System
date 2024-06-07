/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.service.custom.Impl;

import java.util.ArrayList;
import java.util.List;
import supermarket.dao.DaoFactory;
import supermarket.dao.custom.CategoryDao;
import supermarket.dto.CategoryDto;
import supermarket.entity.CategoryEntity;
import supermarket.service.custom.CategoryService;

/**
 *
 * @author Sanjaya Prasad
 */
public class CategoryServiceImpl implements CategoryService {

    private CategoryDao categoryDao = (CategoryDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.ITEM_CATEGORY);

    @Override
    public String saveCategory(CategoryDto categoryDto) throws Exception {
        if (categoryDao.save(new CategoryEntity(categoryDto.getCategoryID(), categoryDto.getCategoryName(), categoryDto.getDescription()))) {
            return "SuccessFully Saved";
        } else {
            return "Fail";
        }
    }

    @Override
    public String updateCategory(CategoryDto categoryDto) throws Exception {
        if (categoryDao.update(new CategoryEntity(categoryDto.getCategoryID(), categoryDto.getCategoryName(), categoryDto.getDescription()))) {
            return "SuccessFully Updated";
        } else {
            return "Fail";
        }
    }

    @Override
    public String deleteCategory(CategoryDto categoryDto) throws Exception {
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setCategoryID(categoryDto.getCategoryID());
        if (categoryDao.delete(categoryEntity)) {
            return "SuccessFully Deleted";
        } else {
            return "Fail";
        }
    }

    @Override
    public CategoryDto getCategory(String id) throws Exception {
        CategoryEntity categoryEntity = categoryDao.get(id);
        if (categoryEntity != null) {
            return new CategoryDto(
                    categoryEntity.getCategoryID(),
                    categoryEntity.getCategoryName(),
                    categoryEntity.getDescription()
            );

        } else {
            return null;
        }
    }

    @Override
    public List<CategoryDto> getAll() throws Exception {
        List<CategoryDto> categoryDtos = new ArrayList<>();
        List<CategoryEntity> itemEntities = categoryDao.getAll();

        for (CategoryEntity e : itemEntities) {
            categoryDtos.add(new CategoryDto(
                    e.getCategoryID(),
                    e.getCategoryName(),
                    e.getDescription()
            )
            );
        }

        return categoryDtos;
    }

}
