/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package supermarket.service.custom;

import java.util.List;
import supermarket.dto.CustomerDto;
import supermarket.service.SuperService;

/**
 *
 * @author Sanjaya Prasad
 */
public interface CustomerService extends SuperService {

    String saveCustomer(CustomerDto customerDto) throws Exception;

    String updateCustomer(CustomerDto customerDto) throws Exception;

    String deleteCustomer(CustomerDto customerDto) throws Exception;

    CustomerDto getCustomer(String id) throws Exception;

    List<CustomerDto> getAll() throws Exception;
}
