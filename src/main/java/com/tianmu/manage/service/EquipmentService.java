package com.tianmu.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tianmu.manage.db.EquipmentMapper;
import com.tianmu.manage.domain.Equipment;
import com.tianmu.manage.domain.SimCard;
import com.tianmu.manage.utils.StatusUtil;
import com.tianmu.openplatform.common.utils.CommonUtil;

@Service
public class EquipmentService {
    @Autowired
    private EquipmentMapper equipmentMapper;
    @Autowired
    private SimCardService simCardService;

    public int addEquipment(Equipment equipment) {
        //对应的SIM卡状态更改为已绑定
        SimCard simCard = simCardService.getSimCardById(Integer.parseInt(equipment.getSimCard().getId()));
        if (simCard != null) {
            simCard.setStatus(StatusUtil.STATUS_USED);
            simCardService.updateSimCard(simCard, Integer.parseInt(simCard.getId()));
        }
		equipment.setEquipCode(CommonUtil.createOrderId());
        return equipmentMapper.addEquipment(equipment);
    }

    public int deleteEquipment(int id){
        return equipmentMapper.deleteEquipment(id);
    }

    public int updateEquipment(Equipment equipment,int id) {
        //获取原SIM卡和新SIM卡信息
        SimCard oldSim = equipmentMapper.getEquipmentById(id).getSimCard();//原SIM卡
        String oldSimId = oldSim==null?"0":oldSim.getId();
        String newSimId = equipment.getSimCard()==null?"0":equipment.getSimCard().getId();
        SimCard newSim = simCardService.getSimCardById(Integer.parseInt(newSimId));//新SIM卡
        //判断是否修改了绑定的sim卡
        if (!(oldSimId.equals(newSimId))) {//修改了绑定的sim卡
            //原SIM卡状态还原
            if (oldSim != null) {
                oldSim.setStatus(StatusUtil.STATUS_NORMAL);
                simCardService.updateSimCard(oldSim, Integer.parseInt(oldSimId));
            }
            //新SIM卡状态更改为已绑定
            if (newSim != null) {
                newSim.setStatus(StatusUtil.STATUS_USED);
                simCardService.updateSimCard(newSim, Integer.parseInt(newSimId));
            }
        }
        return equipmentMapper.updateEquipment(equipment,id);
    }

    public Equipment getEquipmentById(int id){
        return equipmentMapper.getEquipmentById(id);
    }
    
    public int getEquipmentCount()
    {
    	return equipmentMapper.getEquipmentCount();
    }

    public List<Equipment> getEquipment() {
        return equipmentMapper.getEquipment();
    }
    
    public List<Equipment> getEquipmentByPage(int pageIndex, int pageSize){
    	int start = (pageIndex - 1) * pageSize;
    	return equipmentMapper.getEquipmentByPage(start, pageSize);	
    }

    public List<Equipment> getEquipmentByStatus(int status) {
        return equipmentMapper.getEquipmentByStatus(status);
    }
    
    public int SetEquipStatus(int id, int status)
    {
    	return equipmentMapper.SetEquipStatus(id, status);
    }
}
