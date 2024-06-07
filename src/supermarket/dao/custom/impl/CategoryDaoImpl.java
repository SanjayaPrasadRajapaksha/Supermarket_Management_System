/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dao.custom.impl;

import java.util.List;
import supermarket.dao.CrudUtil;
import supermarket.dao.custom.CategoryDao;
import supermarket.entity.CategoryEntity;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Sanjaya Prasad
 */
public class CategoryDaoImpl implements CategoryDao {

    @Override
    public boolean save(CategoryEntity t) throws Exception {
        return CrudUtil.executeUpdate("INSERT INTO Item_Category VALUES(?,?,?)",
                t.getCategoryID(),
                t.getCategoryName(),
                 t.getDescription()
        );
    }

    @Override
    public boolean update(CategoryEntity t) throws Exception {
        return CrudUtil.executeUpdate("UPDATE Item_Category SET  CategoryName = ?, Description = ?  WHERE  CategoryID = ?",
                t.getCategoryName(),
                t.getDescription(),
                t.getCategoryID()
        );
    }

    @Override
    public boolean delete(CategoryEntity t) throws Exception {
        return CrudUtil.executeUpdate("DELETE FROM Item_Category WHERE CategoryID = ?",
                t.getCategoryID());
    }

    @Override
    public CategoryEntity get(String id) throws Exception {
        ResultSet resultSet = CrudUtil.executeQuery("SELECT * FROM Item_Category WHERE CategoryID = ?", id);

        while (resultSet.next()) {
            return new CategoryEntity(
                    resultSet.getString("CategoryID"),
                    resultSet.getString("CategoryName"),
                    resultSet.getString("Description")
            );

        }
        return null;
    }

    @Override
    public List<CategoryEntity> getAll() throws Exception {
        ResultSet resultSet = CrudUtil.executeQuery("SELECT * FROM Item_Category");
        List<CategoryEntity> categoryEntity = new ArrayList<>();
        while (resultSet.next()) {
            categoryEntity.add(new CategoryEntity(
                    resultSet.getString("CategoryID"),
                    resultSet.getString("CategoryName"),
                    resultSet.getString("Description")
            ));

        }
        return categoryEntity;
    }

}
