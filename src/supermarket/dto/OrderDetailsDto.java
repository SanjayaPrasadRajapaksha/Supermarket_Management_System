/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Sanjaya Prasad
 */
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class OrderDetailsDto {
    private String orderID;
    private String itemID;
    private Double orderQty;
    private Double discount;
    private Double totalPrice;
}
