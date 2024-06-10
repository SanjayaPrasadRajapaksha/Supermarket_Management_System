/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.controller;

import java.util.List;
import supermarket.dto.OrderDetailsDto;
import supermarket.service.ServiceFactory;
import supermarket.service.custom.OrderDetailsService;

/**
 *
 * @author Sanjaya Prasad
 */
public class OrderDetailsController {
    private OrderDetailsService orderDetailsService = (OrderDetailsService) ServiceFactory.getInstance().getService(ServiceFactory.ServiceType.ORDER_DETAIL);

     public List<OrderDetailsDto> get(String id) throws Exception {
        return orderDetailsService.getOrderDetails(id);
    }
     
}
