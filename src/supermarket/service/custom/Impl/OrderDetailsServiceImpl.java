/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.service.custom.Impl;

import java.util.ArrayList;
import java.util.List;
import supermarket.dao.DaoFactory;
import supermarket.dao.custom.OrderDetailsDao;
import supermarket.dto.OrderDetailsDto;
import supermarket.entity.OrderDetailsEntity;
import supermarket.service.custom.OrderDetailsService;

/**
 *
 * @author Sanjaya Prasad
 */
public class OrderDetailsServiceImpl implements OrderDetailsService {

    private OrderDetailsDao orderDetailsDao = (OrderDetailsDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.ORDER_DETAIL);

    @Override
    public List<OrderDetailsDto> getOrderDetails(String id) throws Exception {
        List<OrderDetailsDto> orderDetailsDtos = new ArrayList<>();
        List<OrderDetailsEntity> OrderDetailsEntities = (List<OrderDetailsEntity>) orderDetailsDao.get(id);

        for (OrderDetailsEntity e : OrderDetailsEntities) {
            orderDetailsDtos.add(new OrderDetailsDto(
                    e.getOrderID(),
                    e.getItemID(),
                    e.getOrderQty(),
                    e.getDiscount(),
                    e.getTotalPrice()));

        }

        return orderDetailsDtos;
    }

}
