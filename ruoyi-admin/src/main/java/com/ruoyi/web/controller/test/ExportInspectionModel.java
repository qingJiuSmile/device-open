package com.ruoyi.web.controller.test;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import com.alibaba.excel.converters.url.UrlImageConverter;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.experimental.Accessors;

import java.net.URL;
import java.time.LocalDateTime;

@Data
@ContentRowHeight(15)
@HeadRowHeight(25)
@ColumnWidth(25)
@Accessors(chain = true)
public class ExportInspectionModel {

    /**
     * 检测名称
     */
    @ExcelProperty(value = "检验名称")
    private String inspectionName;

    /**
     * 施工单位
     */
    @ExcelProperty(value = "检验名称")
    private String constructionOrganization;
    /**
     * 见证人id
     */
    @ExcelProperty(value = "见证人")
    private String userName;


    /**
     * 检验类型：1：平行检验；2：见证检验。
     */
    @ExcelProperty(value = "检验类型")
    private String inspectionType;
    /**
     * 项目id
     */
    @ExcelProperty(value = "项目名称")
    private String projectName;
    /**
     * 检验报告url
     */
    @ExcelProperty(value = "报告", converter = UrlImageConverter.class)
    @ColumnWidth(60)
    private URL inspectionReportUrl;
    /**
     * 创建时间
     */
    @ExcelProperty(value = "创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime createTime;
}