/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dao.custom.impl;

import java.util.List;
import supermarket.dao.CrudUtil;
import supermarket.dao.custom.OrderDao;
import supermarket.entity.OrderEntity;

/**
 *
 * @author Sanjaya Prasad
 */
public class OrderDaoImpl implements OrderDao {

    @Override
    public boolean save(OrderEntity t) throws Exception {
        return CrudUtil.executeUpdate("INSERT INTO orders VALUES(?,?,?)",
                t.getOrderID(),
                t.getOrderDate(),
                t.getCustID()
        );
    }

    @Override
    public boolean update(OrderEntity t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(OrderEntity t) throws Exception {
        return CrudUtil.executeUpdate("DELETE FROM orders WHERE OrderID = ?",
                t.getOrderID());
    }

    @Override
    public OrderEntity get(String id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<OrderEntity> getAll() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
