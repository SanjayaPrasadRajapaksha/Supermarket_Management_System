/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package supermarket.service.custom;

import java.util.List;
import supermarket.dto.OrderDto;
import supermarket.service.SuperService;

/**
 *
 * @author Sanjaya Prasad
 */
public interface OrderService extends SuperService {

    String placeOrder(OrderDto orderDto) throws Exception;
    String cancelOrder(OrderDto orderDto) throws Exception;
}
