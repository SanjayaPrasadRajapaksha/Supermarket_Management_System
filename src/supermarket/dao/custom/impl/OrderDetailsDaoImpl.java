/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dao.custom.impl;

import java.util.List;
import supermarket.dao.CrudUtil;
import supermarket.dao.custom.OrderDetailsDao;
import supermarket.entity.OrderDetailsEntity;

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
    public boolean update(OrderDetailsEntity t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(OrderDetailsEntity t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public OrderDetailsEntity get(String id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<OrderDetailsEntity> getAll() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
