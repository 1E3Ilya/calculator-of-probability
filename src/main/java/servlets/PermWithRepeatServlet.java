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

@WebServlet("/perm-with-repeat")
public class PermWithRepeatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, Object> context = new HashMap<>();
        resp.setContentType("text/html");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        context.put("answer", req.getAttribute("answer"));
        try {
            FreemarkerHelper.drawPage(req, resp, "perm_with_repeat.ftl", context);
        } catch (TemplateException e) {
            throw new RuntimeException(e);
        }
        req.removeAttribute("answer");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int count = Integer.parseInt(req.getParameter("fieldCount"));
        int[] arr = new int[count];
        for (int i = 1; i <= count; i++) {
            arr[i - 1] = Integer.parseInt(req.getParameter("number" + i));
        }
        req.setAttribute("answer",CalculatorService.permutationsWithRepetition(count, arr));
        doGet(req, resp);
    }
}
