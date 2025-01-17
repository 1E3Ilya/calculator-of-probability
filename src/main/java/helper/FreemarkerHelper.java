package helper;

import config.FreemarkerConfigSingleton;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class FreemarkerHelper {
    public static void drawPage(HttpServletRequest request, HttpServletResponse response, String page, Map<String, Object> context) throws IOException, TemplateException {
        Configuration cfg = FreemarkerConfigSingleton.getCfg(request);
        Template template = cfg.getTemplate(page);
        try {
            template.process(context, response.getWriter());
        } catch (TemplateException e) {
            throw new RuntimeException(e);
        }
    }
}