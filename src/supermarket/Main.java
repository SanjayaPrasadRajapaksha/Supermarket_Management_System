/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket;

import java.awt.Dimension;
import java.awt.Toolkit;
import javax.swing.JFrame;
import javax.swing.JRootPane;
import supermarket.view.CancelOrderView;
import supermarket.view.CategoryView;
import supermarket.view.CustomerView;
import supermarket.view.ItemView;
import supermarket.view.OrderView;

/**
 *
 * @author Sanjaya Prasad
 */
public class Main {

    public static void main(String[] args) {
        //new CustomerView().setVisible(true);
        // new ItemView().setVisible(true);
        //new CategoryView().setVisible(true);
        //  new OrderView().setVisible(true);
        //   new CancelOrderView().setVisible(true);
        // new Menu().setVisible(true);
        new Login().setVisible(true);
    }
}
