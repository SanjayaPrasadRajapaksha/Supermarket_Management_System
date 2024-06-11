/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.controller;

import supermarket.dto.OrderDto;
import supermarket.service.ServiceFactory;
import supermarket.service.custom.OrderService;

/**
 *
 * @author Sanjaya Prasad
 */
public class OrderController {

    private OrderService orderService = (OrderService) ServiceFactory.getInstance().getService(ServiceFactory.ServiceType.ORDERS);

    public String placeOrder(OrderDto orderDto) throws Exception {
        return orderService.placeOrder(orderDto);
    }

    public String cancelOrder(OrderDto orderDto) throws Exception {
        return orderService.cancelOrder(orderDto);
    }

}
