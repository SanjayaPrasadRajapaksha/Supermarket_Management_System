/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dao.custom.impl;

import java.util.List;
import supermarket.dao.CrudUtil;
import supermarket.dao.custom.OrderDetailsDao;
import supermarket.entity.OrderDetailsEntity;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Sanjaya Prasad
 */
public class OrderDetailsDaoImpl implements OrderDetailsDao {

    @Override
    public boolean save(OrderDetailsEntity t) throws Exception {
        return CrudUtil.executeUpdate("INSERT INTO Order_Detail VALUES (?,?,?,?,?)",
                t.getOrderID(),
                t.getItemID(),
                t.getOrderQty(),
                t.getDiscount(),
                t.getTotalPrice()
        );
    }

    @Override
    public List<OrderDetailsEntity> get(String id) throws Exception {
        ResultSet resultSet = CrudUtil.executeQuery("SELECT * FROM Order_Detail WHERE OrderID = ?", id);
        List<OrderDetailsEntity> orderDetailsEntities = new ArrayList<>();
        while (resultSet.next()) {
            orderDetailsEntities.add(new OrderDetailsEntity(
                    resultSet.getString("OrderID"),
                    resultSet.getString("ItemID"),
                    resultSet.getDouble("OrderQty"),
                    resultSet.getDouble("Discount"),
                    resultSet.getDouble("TotalPrice")));

        }
        return orderDetailsEntities;
    }

}
