/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package supermarket.service.custom;

import java.util.List;
import supermarket.dto.OrderDetailsDto;
import supermarket.service.SuperService;

/**
 *
 * @author Sanjaya Prasad
 */
public interface OrderDetailsService extends SuperService {

    public List<OrderDetailsDto> getOrderDetails(String id) throws Exception;
}
