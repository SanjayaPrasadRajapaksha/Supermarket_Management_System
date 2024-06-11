/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package supermarket.service.custom.Impl;

import java.util.ArrayList;
import java.util.List;
import supermarket.dao.DaoFactory;
import supermarket.dao.custom.ItemDao;
import supermarket.dto.ItemDto;
import supermarket.entity.ItemEntity;
import supermarket.service.custom.ItemService;

/**
 *
 * @author Sanjaya Prasad
 */
public class ItemServiceImpl implements ItemService {

    private ItemDao ItemDao = (ItemDao) DaoFactory.getInstance().getDao(DaoFactory.DaoType.ITEM);

    @Override
    public String saveItem(ItemDto itemDto) throws Exception {
        if (ItemDao.save(new ItemEntity(itemDto.getItemID(), itemDto.getItemName(), itemDto.getQuantity(), itemDto.getPrice(), itemDto.getCategoryID()))) {
            return "SuccessFully Saved";
        } else {
            return "Fail";
        }
    }

    @Override
    public String updateItem(ItemDto itemDto) throws Exception {
        if (ItemDao.update(new ItemEntity(itemDto.getItemID(), itemDto.getItemName(), itemDto.getQuantity(), itemDto.getPrice(), itemDto.getCategoryID()))) {
            return "SuccessFully Updated";
        } else {
            return "Fail";
        }
    }

    @Override
    public String deleteItem(ItemDto itemDto) throws Exception {
        ItemEntity itemEntity = new ItemEntity();
        itemEntity.setItemID(itemDto.getItemID());
        if (ItemDao.delete(itemEntity)) {
            return "SuccessFully Deleted";
        } else {
            return "Fail";
        }
    }

    @Override
    public ItemDto getItem(String id) throws Exception {
        ItemEntity itemEntity = ItemDao.get(id);
        if (itemEntity != null) {
            return new ItemDto(
                    itemEntity.getItemID(),
                    itemEntity.getItemName(),
                    itemEntity.getQuantity(),
                    itemEntity.getPrice(),
                    itemEntity.getCategoryID()
            );

        } else {
            return null;
        }
    }

    @Override
    public List<ItemDto> getAll() throws Exception {
        List<ItemDto> itemDtos = new ArrayList<>();
        List<ItemEntity> itemEntities = ItemDao.getAll();

        for (ItemEntity e : itemEntities) {
            itemDtos.add(new ItemDto(
                    e.getItemID(),
                    e.getItemName(),
                    e.getQuantity(),
                    e.getPrice(),
                    e.getCategoryID())
            );
        }

        return itemDtos;
    }

}
