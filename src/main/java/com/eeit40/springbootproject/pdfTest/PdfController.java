package com.eeit40.springbootproject.pdfTest;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;


public class PdfController {
	@Value("${DEST}")
	private String dest;
	@Value("${HTML}")
	private String html;
	@Value("${FONT}")
	private String font;
	private static Configuration freemarkerCfg = null;

	@RequestMapping(value = "helloPdf")
	public void showPdf(HttpServletResponse response) throws IOException, DocumentException {
//需要填充的資料
		Map<String, Object> data = new HashMap<>(16);
		data.put("name", "kevin");

		String content = freeMarkerRender(data, html);
//建立pdf
		createPdf(content, dest);

// 讀取pdf並預覽
		readPdf(response);

	}

	public void createPdf(String content, String dest) throws IOException, DocumentException {
// step 1
		Document document = new Document();
// step 2
		PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(dest));
// step 3
		document.open();
// step 4
		XMLWorkerFontProvider fontImp = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
		fontImp.register(font);
		XMLWorkerHelper.getInstance().parseXHtml(writer, document, new ByteArrayInputStream(content.getBytes("UTF-8")),
				null, Charset.forName("UTF-8"), fontImp);
// step 5
		document.close();

	}

	/**
	 * freemarker渲染html
	 */
	public String freeMarkerRender(Map<String, Object> data, String htmlTmp) {
		Writer out = new StringWriter();

		try {
// 獲取模板,並設定編碼方式
			setFreemarkerCfg();
			Template template = freemarkerCfg.getTemplate(htmlTmp);
			template.setEncoding("UTF-8");
//將合併後的資料和模板寫入到流中，這裡使用的字元流
			template.process(data, out);
			out.flush();
			return out.toString();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				out.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * 設定freemarkerCfg
	 */
	private void setFreemarkerCfg() {
		freemarkerCfg = new Configuration();
//freemarker的模板目錄
		try {
			freemarkerCfg.setDirectoryForTemplateLoading(new ClassPathResource("template").getFile());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 讀取本地pdf,這裡設定的是預覽
	 */
	private void readPdf(HttpServletResponse response) {
		response.reset();
		response.setContentType("application/pdf");
		try {
			File file = new File(dest);
			FileInputStream fileInputStream = new FileInputStream(file);
			OutputStream outputStream = response.getOutputStream();
			IOUtils.write(IOUtils.toByteArray(fileInputStream), outputStream);
			response.setHeader("Content-Disposition", "inline; filename= file");
			outputStream.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}