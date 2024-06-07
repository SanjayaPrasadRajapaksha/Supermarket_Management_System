/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dao.custom.impl;

import java.util.List;
import supermarket.dao.CrudUtil;
import supermarket.dao.custom.ItemDao;
import supermarket.entity.ItemEntity;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Sanjaya Prasad
 */
public class ItemDaoImpl implements ItemDao {

    @Override
    public boolean save(ItemEntity t) throws Exception {
        return CrudUtil.executeUpdate("INSERT INTO item VALUES(?,?,?,?)",
                t.getItemID(),
                t.getItemName(),
                t.getQuantity(),
                t.getCategoryID()
        );
    }

    @Override
    public boolean update(ItemEntity t) throws Exception {
        return CrudUtil.executeUpdate("UPDATE item SET ItemName = ?, Quantity = ?, CategoryID = ? WHERE ItemID = ?",
                t.getItemName(),
                t.getQuantity(),
                t.getCategoryID(),
                t.getItemID()
        );
    }

    @Override
    public boolean delete(ItemEntity t) throws Exception {
        return CrudUtil.executeUpdate("DELETE FROM item WHERE ItemID = ?",
                t.getItemID());
    }

    @Override
    public ItemEntity get(String id) throws Exception {
        ResultSet resultSet = CrudUtil.executeQuery("SELECT * FROM item WHERE ItemID = ?", id);

        while (resultSet.next()) {
            return new ItemEntity(
                    resultSet.getString("ItemID"),
                    resultSet.getString("ItemName"),
                    resultSet.getString("Quantity"),
                    resultSet.getString("CategoryID")
            );

        }
        return null;
    }

    @Override
    public List<ItemEntity> getAll() throws Exception {
        ResultSet resultSet = CrudUtil.executeQuery("SELECT * FROM item");
        List<ItemEntity> itemEntities = new ArrayList<>();
        while (resultSet.next()) {
            itemEntities.add(new ItemEntity(
                    resultSet.getString("ItemID"),
                    resultSet.getString("ItemName"),
                    resultSet.getString("Quantity"),
                    resultSet.getString("CategoryID")));

        }
        return itemEntities;
    }

}
