/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.service.custom.Impl;

import java.sql.Connection;
import java.util.List;
import supermarket.dao.DaoFactory;
import supermarket.dao.custom.ItemDao;
import supermarket.dao.custom.OrderDao;
import supermarket.dao.custom.OrderDetailsDao;
import supermarket.db.DBConnection;
import supermarket.dto.OrderDetailsDto;
import supermarket.dto.OrderDto;
import supermarket.entity.ItemEntity;
import supermarket.entity.OrderDetailsEntity;
import supermarket.entity.OrderEntity;
import supermarket.service.custom.OrderService;

/**
 *
 * @author Sanjaya Prasad
 */
public class OrderServiceImpl implements OrderService {

    private OrderDao orderDao = (OrderDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.ORDERS);
    private OrderDetailsDao orderDetailsDao = (OrderDetailsDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.ORDER_DETAIL);
    private ItemDao ItemDao = (ItemDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.ITEM);

    @Override
    public String placeOrder(OrderDto orderDto) throws Exception {
        Connection connection = DBConnection.getInstance().getConnection();
        try {
            connection.setAutoCommit(false);

            OrderEntity orderEntity = new OrderEntity();
            orderEntity.setOrderID(orderDto.getOrderID());
            orderEntity.setOrderDate(orderDto.getDate());
            orderEntity.setCustID(orderDto.getCustID());

            if (orderDao.save(orderEntity)) {
                 float totalPrice = 0;
                 String billDetails="";
               
                boolean isReservationDetailSaved = true;

                for (OrderDetailsDto e : orderDto.getOrderDetailsDto()) {
                    boolean response = orderDetailsDao.save(new OrderDetailsEntity(orderDto.getOrderID(), e.getItemID(), e.getOrderQty(), e.getDiscount(), ((e.getOrderQty() * e.getItemPrice()-e.getDiscount()))));
                    totalPrice += e.getOrderQty() * e.getItemPrice();
                    billDetails +=("# "+e.getItemID()+" : "+e.getOrderQty()+" * "+e.getItemPrice()+" - "+ e.getDiscount()+"(Dis)"+"\t"+(e.getOrderQty() * e.getItemPrice()-e.getDiscount())+"\n"); 
                    if (!response) {
                        isReservationDetailSaved = false;
                    }
                }

                if (isReservationDetailSaved) {

                    boolean isRoomUpdated = true;
                    for (OrderDetailsDto e : orderDto.getOrderDetailsDto()) {
                        ItemEntity itemEntity = ItemDao.get(e.getItemID());
                        if (itemEntity != null) {
                            itemEntity.setQuantity(itemEntity.getQuantity() - e.getOrderQty());

                            if (!ItemDao.update(itemEntity)) {
                                isRoomUpdated = false;
                            }
                        }
                    }

                    if (isRoomUpdated) {
                        connection.commit();

                        return billDetails+"\n"+"Total Price :"+"\t\t"+totalPrice+"/=";
                    } else {
                        connection.rollback();
                        return "Order Update Error";
                    }

                } else {
                    connection.rollback();
                    return "Order Details Save Error";
                }

            } else {
                connection.rollback();
                return "Order Save Error";
            }

        } catch (Exception e) {
            connection.rollback();
            e.printStackTrace();
            throw e;
        } finally {
            connection.setAutoCommit(true);
        }
    }

}
