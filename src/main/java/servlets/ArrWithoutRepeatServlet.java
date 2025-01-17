package servlets;

import freemarker.template.TemplateException;
import helper.FreemarkerHelper;
import service.CalculatorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/arr-without-repeat")
public class ArrWithoutRepeatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, Object> context = new HashMap<>();
        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        context.put("answer", req.getAttribute("answer"));
        try {
            FreemarkerHelper.drawPage(req, resp, "arr_without_repeat.ftl", context);
        } catch (TemplateException e) {
            throw new RuntimeException(e);
        }
        req.removeAttribute("answer");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int n = Integer.parseInt(req.getParameter("n"));
        int k = Integer.parseInt(req.getParameter("k"));
        req.setAttribute("answer", CalculatorService.arrangementsWithoutRepeat(n, k));
        doGet(req, resp);
    }
}
