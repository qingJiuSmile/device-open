package com.ruoyi.web.controller.test;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.support.ExcelTypeEnum;
import com.google.common.collect.Lists;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@RestController
@RequestMapping("student")
public class StudentController {
    @Resource
    HttpServletRequest request;

    @Resource
    HttpServletResponse response;


    public final static String STUDENT_UPLOAD_PATH = "D:\\images\\student\\";

    /**
     * 导出方法
     */
    @GetMapping("export")
    public void export(HttpServletResponse response, HttpServletRequest request) {

        List<Student> students = new ArrayList<>();
        for (int i = 0; i < 10000; i++) {
            Student student = new Student();
            student.setName("张三" + i);
            student.setBirthday(new Date());
            student.setId(1);
            student.setSex("男");
            student.setTel("15888888886");
            student.setPhoto("D:\\J-USER\\desktop7\\按工号-233人\\11021.jpg");
            student.setAddress("北京市海淀区");
            students.add(student);
        }

        List<List<Student>> partition = Lists.partition(students, 2000);

        long l = System.currentTimeMillis();
        System.out.println("开始导出图片 ======>");
        // ExcelUtil.exportExcel(students, "导出图片测试", "网页导出", Student.class, "导出图片测试.xls", response);
        System.out.println("耗时" + (System.currentTimeMillis() - l));
    }


    @GetMapping("/test2")
    public void imgWrite(HttpServletResponse response, HttpServletRequest request) {
        List<Student> students = new ArrayList<>();
        long l = System.currentTimeMillis();

        for (int i = 0; i < 20000; i++) {
            Student student = new Student();
            student.setName("张三" + i);
            student.setBirthday(new Date());
            student.setId(1);
            student.setSex("男");
            student.setTel("15888888886");
            student.setPhoto("D:\\J-USER\\desktop7\\按工号-233人\\11021.jpg");
            student.setAddress("北京市海淀区");
            students.add(student);
        }

        System.out.println("组织数据耗时==>" + (System.currentTimeMillis() - l));
        try {
            EasyExcel.write(getOutputStream("测试导出.xls", response), Student.class)
                    .sheet("测试").doWrite(students);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            System.out.println("耗时" + (System.currentTimeMillis() - l));
        }
    }


    /**
     * 导出文件时为Writer生成OutputStream
     */
    private static OutputStream getOutputStream(String fileName,
                                                HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setHeader("content-Type", "application/vnd.ms-excel");
        response.setHeader("Content-Disposition",
                "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
        return response.getOutputStream();
    }

    /**
     * 导出 Excel ：一个 sheet，带表头
     * 自定义WriterHandler 可以定制行列数据进行灵活化操作
     *
     * @param response  HttpServletResponse
     * @param list      数据 list
     * @param fileName  导出的文件名
     * @param sheetName 导入文件的 sheet 名
     */
    public static <T> void writeExcel(HttpServletResponse response, List<T> list,
                                      String fileName, String sheetName, ExcelTypeEnum excelTypeEnum) throws IOException {
        if (sheetName == null || "".equals(sheetName)) {
            sheetName = "sheet1";
        }
        if (CollectionUtils.isEmpty(list)) {
            return;
        }
        EasyExcel.write(getOutputStream(fileName, response), list.get(0).getClass()).sheet(sheetName).doWrite(list);
    }

    @PostMapping("/insert")
    public List<Student> test(MultipartFile file) {
        // 这里的excel文件可以 为xls或xlsx结尾
        try {
            List<Object> list = ExcelOptionsService.writeWithoutHead(file.getInputStream(), 1);
            List<Student> students = (List<Student>) (List) list;
            return students;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


}
