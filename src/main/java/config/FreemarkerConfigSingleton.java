package config;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.Version;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

public class FreemarkerConfigSingleton {
    private static Configuration cfg;
    private static ServletContext sc;
    public static Configuration getCfg(HttpServletRequest request) {
        if (cfg == null) {
            cfg = new Configuration();
            cfg.setServletContextForTemplateLoading(request.getServletContext(), "/WEB-INF/templates");
            cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
            cfg.setDefaultEncoding("UTF-8");
        }
        return cfg;
    }
}
