package com.edu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.edu.common.entity.Busroute;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhaojie
 * @since 2024-09-02
 */
public interface BusrouteService extends IService<Busroute> {

    Boolean add(String name, String bustime, String route);

    boolean update(Integer id, String name, String bustime, String route);

    Boolean del(Integer id);
}
