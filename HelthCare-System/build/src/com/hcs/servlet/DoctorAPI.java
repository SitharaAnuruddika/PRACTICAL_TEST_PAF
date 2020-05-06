package com.hcs.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hcs.controller.DoctorController;
import com.hcs.model.Doctor;

/**
 * Servlet implementation class DoctorAPI
 */
@WebServlet("/DoctorAPI")
public class DoctorAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DoctorController doctorcontroller = new DoctorController();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoctorAPI() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String output = doctorcontroller.readDoctors();
		response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		Doctor doctor = new Doctor();
		doctor.setDoctorName(request.getParameter("DoctorName"));
		doctor.setEmail(request.getParameter("Email"));
		doctor.setPhoneNumber(Integer.parseInt(request.getParameter("PhoneNumber")));
		doctor.setDoctorType(request.getParameter("DoctorType"));
		doctor.setWorkHospital(request.getParameter("WorkHospital"));

		String output = doctorcontroller.AddDoctor(doctor);
		response.getWriter().write(output);

	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, String> paras = getParasMap(request);

		Doctor doctor = new Doctor();
		doctor.setDoctorID(Integer.parseInt(paras.get("DoctorIDSave").toString()));
		doctor.setDoctorName(paras.get("DoctorName").toString());
		doctor.setEmail(paras.get("Email").toString());
		doctor.setPhoneNumber(Integer.parseInt(paras.get("PhoneNumber").toString()));
		doctor.setDoctorType(paras.get("DoctorType").toString());
		doctor.setWorkHospital(paras.get("WorkHospital").toString());

		String output = doctorcontroller.updatedoctor(doctor);
		response.getWriter().write(output);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map paras = getParasMap(request);
		String output = doctorcontroller.deleteDoctor(paras.get("DoctorID").toString());
		response.getWriter().write(output);
	}

	// Convert request parameters to a Map
	private static Map getParasMap(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			
			String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
			queryString=URLDecoder.decode(queryString ,"utf-8");
			scanner.close();
			String[] params = queryString.split("&");
			for (String param : params) {

				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}
		} catch (Exception e) {
		}
		return map;
	}


}
