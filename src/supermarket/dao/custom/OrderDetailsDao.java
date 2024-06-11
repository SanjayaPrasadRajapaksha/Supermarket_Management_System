/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package supermarket.dao.custom;

import java.util.List;
import supermarket.dao.SuperDao;
import supermarket.entity.OrderDetailsEntity;

/**
 *
 * @author Sanjaya Prasad
 */
public interface OrderDetailsDao extends SuperDao {

    public List<OrderDetailsEntity> get(String id) throws Exception;

    public boolean save(OrderDetailsEntity t) throws Exception;
}
