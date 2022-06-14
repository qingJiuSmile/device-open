package com.ruoyi.web.controller.test;

import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.ExcelReader;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * excel文件的操作service
 *
 * @author tjy
 */
@Service
public class ExcelOptionsService {

    /**
     * 根据excel输入流，读取excel文件
     *
     * @param inputStream execel表格的输入流
     * @return 返回list的集合
     **/
    static List<Object> writeWithoutHead(InputStream inputStream, Integer headRow) {
        if (headRow == null) {
            headRow = 0;
        }
        StringExcelListener listener = new StringExcelListener();
        ExcelReader excelReader = EasyExcelFactory.read(inputStream, null, listener).headRowNumber(headRow).build();
        excelReader.readAll();
        List<Object> data = listener.getData();
        excelReader.finish();
        return data;
    }

    /**
     * StringList 解析监听器
     */
    private static class StringExcelListener extends AnalysisEventListener {

        /**
         * 自定义用于暂时存储data
         * 可以通过实例获取该值
         */
        private List<Object> data = new ArrayList<>();

        /**
         * 每解析一行都会回调invoke()方法
         *
         * @param object  读取后的数据对象
         * @param context 内容
         */
        @Override
        public void invoke(Object object, AnalysisContext context) {
            if (object != null) {
                data.add(object);
            }
        }

        @Override
        public void doAfterAllAnalysed(AnalysisContext context) {
        }

        public List<Object> getData() {
            return data;
        }

        public void setData(List<Object> data) {
            this.data = data;
        }
    }
}

