/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.service.custom.Impl;

import java.util.ArrayList;
import java.util.List;
import supermarket.dao.DaoFactory;
import supermarket.dao.custom.CustomerDao;
import supermarket.dto.CustomerDto;
import supermarket.entity.CustomerEntity;
import supermarket.service.custom.CustomerService;

/**
 *
 * @author Sanjaya Prasad
 */
public class CustomerServiceImpl implements CustomerService{

    private CustomerDao customerDao = (CustomerDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.CUSTOMER);
   @Override
    public String saveCustomer(CustomerDto customerDto) throws Exception {
        if (customerDao.save(new CustomerEntity(customerDto.getCustID(), customerDto.getCustTitle(), customerDto.getCustName(), customerDto.getNIC(), customerDto.getDOB(), customerDto.getMobileNumber(), customerDto.getCustAddress(), customerDto.getCity(), customerDto.getProvince(), customerDto.getPostalCode()))) {
            return "SuccessFully Saved";
        } else {
            return "Fail";
        }
    }

    @Override
    public String updateCustomer(CustomerDto customerDto) throws Exception {
        if (customerDao.update(new CustomerEntity(customerDto.getCustID(), customerDto.getCustTitle(), customerDto.getCustName(), customerDto.getNIC(), customerDto.getDOB(), customerDto.getMobileNumber(), customerDto.getCustAddress(), customerDto.getCity(), customerDto.getProvince(), customerDto.getPostalCode()))) {
            return "SuccessFully Updated";
        } else {
            return "Fail";
        }
    }

    @Override
    public String deleteCustomer(CustomerDto customerDto) throws Exception {
        CustomerEntity customerEntity = new CustomerEntity();
        customerEntity.setCustID(customerDto.getCustID());
        if (customerDao.delete(customerEntity)) {
            return "SuccessFully Deleted";
        } else {
            return "Fail";
        }
    }

    @Override
    public CustomerDto getCustomer(String id) throws Exception {
        CustomerEntity customerEntity = customerDao.get(id);
        if (customerEntity != null) {
            return new CustomerDto(
                    customerEntity.getCustID(),
                    customerEntity.getCustTitle(),
                    customerEntity.getCustName(),
                    customerEntity.getNIC(),
                    customerEntity.getDOB(),
                    customerEntity.getMobileNumber(),
                    customerEntity.getCustAddress(),
                    customerEntity.getCity(),
                    customerEntity.getProvince(),
                    customerEntity.getPostalCode());

        } else {
            return null;
        }
    }

    @Override
    public List<CustomerDto> getAll() throws Exception {

        List<CustomerDto> customerDtos = new ArrayList<>();
        List<CustomerEntity> customerEntities = customerDao.getAll();

        for (CustomerEntity e : customerEntities) {
            customerDtos.add(new CustomerDto(
                    e.getCustID(),
                    e.getCustTitle(),
                    e.getCustName(),
                    e.getNIC(),
                    e.getDOB(),
                    e.getMobileNumber(),
                    e.getCustAddress(),
                    e.getCity(),
                    e.getProvince(),
                    e.getPostalCode())
            );
        }

        return customerDtos;
    }
}
