package com.ruoyi.web.controller.test;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import com.alibaba.excel.converters.string.StringImageConverter;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@ContentRowHeight(70)
@HeadRowHeight(25)
public class Student implements Serializable {

    @ExcelProperty(value = "编号")
    private Integer id;

    @ColumnWidth(10)
    @ExcelProperty(converter = StringImageConverter.class, value = "头像")
    private String photo;

    @ExcelProperty(value = "姓名")
    @ColumnWidth(15)
    private String name;

    @ExcelProperty(value = "手机")
    @ColumnWidth(25)
    private String tel;

    @ExcelProperty(value = "性别")
    @ColumnWidth(10)
    private String sex;

    @ExcelProperty(value = "地址")
    @ColumnWidth(30)
    private String address;

    @ExcelProperty(value = "生日")
    @DateTimeFormat("yyyy-MM-dd")
    @ColumnWidth(20)
    private Date birthday;
}
