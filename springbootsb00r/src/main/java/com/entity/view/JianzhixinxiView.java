package com.entity.view;

import com.entity.JianzhixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 兼职信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-31 17:19:17
 */
@TableName("jianzhixinxi")
public class JianzhixinxiView  extends JianzhixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JianzhixinxiView(){
	}
 
 	public JianzhixinxiView(JianzhixinxiEntity jianzhixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, jianzhixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
