/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dao;

import supermarket.dao.custom.impl.CustomerDaoImpl;


/**
 *
 * @author Sanjaya Prasad
 */
public class DaoFactory {
 private static DaoFactory daoFactory;

    public DaoFactory() {
    }

    public static DaoFactory getInstance() {
        if (daoFactory == null) {
            daoFactory = new DaoFactory();
        }
        return daoFactory;
    }
    
        public SuperDao getDao(DaoType daoType) {
        switch (daoType) {

            case CUSTOMER:
                return new CustomerDaoImpl();
            case ITEM_CATEGORY:
               // return new RoomCategoryRepositoryImpl();
            case ITEM:
              //  return new RoomRepositoryImpl();
            case ORDERS:
              //  return new ReservationRepositoryImpl();
            case ORDER_DETAIL:
              //  return new ReservationDetailRepositoryImpl();
            default:
                return null;
        }
    }
        
     public enum DaoType {
        CUSTOMER, ITEM_CATEGORY, ITEM, ORDERS, ORDER_DETAIL
    }
}
