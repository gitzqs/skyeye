package com.tianmu.manage.service;

import com.tianmu.manage.db.RoleMapper;
import com.tianmu.manage.db.SimMapper;
import com.tianmu.manage.domain.Role;
import com.tianmu.manage.domain.SimCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SimCardService {
    @Autowired
    private SimMapper simMapper;

    public int addSimCard(SimCard simCard) {
        return simMapper.addSimCard(simCard);
    }

    public int deleteSimCard(int id){
        return simMapper.deleteSimCard(id);
    }

    public int updateSimCard(SimCard simCard,int id) {
        return simMapper.updateSimCard(simCard,id);
    }

    public SimCard getSimCardById(int id){
        return simMapper.getSimCardById(id);
    }

    public List<SimCard> getSimCard() {  return simMapper.getSimCard(); }

    public List<SimCard> getSimCardByStatus(String status) {  return simMapper.getSimCardByStatus(status); }
}
