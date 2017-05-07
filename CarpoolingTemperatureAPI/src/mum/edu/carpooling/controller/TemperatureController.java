package mum.edu.carpooling.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.w3c.dom.NodeList;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/**
 *
 * @author Rabin
 */
@WebServlet("/TemperatureController")
public class TemperatureController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TemperatureController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());

        String zipCode = request.getParameter("txtSearch");
        System.out.print("The zip code is : " + zipCode);      
        HttpSession session = request.getSession();
        String userSession = (String) session.getAttribute("username");
        if (null == userSession) {
            forward(request, response, "login.jsp");
        } else {
           forward(request, response, "temperature.jsp");
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        System.out.print("I am here -- Temperature controller!!");
        String zipCode = request.getParameter("txtSearch");
        System.out.print("The zip code is : " + zipCode);

        URL url = new URL("https://graphical.weather.gov/xml/sample_products/browser_interface/ndfdXMLclient.php?zipCodeList=" + zipCode);
        TreeSet tempSet = new TreeSet<Integer>();
        try {
            URLConnection conn = url.openConnection();

            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(conn.getInputStream());

            TransformerFactory tfactory = TransformerFactory.newInstance();
            Transformer xform = tfactory.newTransformer();
            File myOutput = new File("D:\\MUM_Project\\xmlHolder\\myOutput.xml");

            xform.transform(new DOMSource(doc), new StreamResult(myOutput));
            doc.getDocumentElement().normalize();
            System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
            NodeList nList = doc.getElementsByTagName("temperature");
            System.out.println("----------------------------");

            Node nNode = nList.item(0);

            System.out.println("\nCurrent Element :" + nNode.getNodeName());

            if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                Element eElement = (Element) nNode;

                for (int i = 0; i < 7; i++) {
                    //System.out.println("Name : " + eElement.getAttribute("name"));
                    System.out.println("value : " + eElement.getElementsByTagName("value").item(i).getTextContent());
                    tempSet.add(eElement.getElementsByTagName("value").item(0).getTextContent());
                }

                System.out.println("The maximum temperature is : " + tempSet.last());
            }

        } catch (Exception ex) {
            Logger.getLogger(TemperatureController.class.getName()).log(Level.SEVERE, null, ex);
            request.getRequestDispatcher("errorPage.jsp").forward(request, response);
        }

        request.setAttribute("maxTemp", tempSet.last());
        request.setAttribute("zipCode", zipCode);
        System.out.println("Here");
        //forward(request, response, "temperature.jsp");

        request.getRequestDispatcher("temperatureDisplay.jsp").forward(request, response);
    }

    private void forward(HttpServletRequest request, HttpServletResponse response, String pageName)
            throws ServletException, IOException {
        RequestDispatcher dispatch = request.getRequestDispatcher(pageName);
        dispatch.forward(request, response);
    }

}
