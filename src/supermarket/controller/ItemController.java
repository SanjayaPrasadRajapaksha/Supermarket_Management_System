/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.controller;

import java.util.List;
import supermarket.dto.ItemDto;
import supermarket.service.ServiceFactory;
import supermarket.service.custom.ItemService;

/**
 *
 * @author Sanjaya Prasad
 */
public class ItemController {

    private ItemService itemService = (ItemService) ServiceFactory.getInstance().getService(ServiceFactory.ServiceType.ITEM);

    public String saveItem(ItemDto itemDto) throws Exception {
        return itemService.saveItem(itemDto);
    }

    public List<ItemDto> getAll() throws Exception {
        return itemService.getAll();
    }

    public ItemDto searchItem(String id) throws Exception {
        return itemService.getItem(id);
    }

    public String updateItem(ItemDto itemDto) throws Exception {
        return itemService.updateItem(itemDto);
    }

    public String deleteItem(ItemDto itemDto) throws Exception {
        return itemService.deleteItem(itemDto);
    }
}
