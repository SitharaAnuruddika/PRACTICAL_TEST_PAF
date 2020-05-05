package com.hcs.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.hcs.model.Doctor;
import com.hcs.util.DBConnection;

public class DoctorController {

	private static Connection connection;
	private static PreparedStatement ps;
	private static ResultSet rs;
	

	public String AddDoctor(Doctor doctor) {
		String output = "";
		try {
			connection = DBConnection.getConnection();
			 if (connection == null)
			 {return "Error while connecting to the database for inserting."; } 
			
			ps = connection.prepareStatement(
					"INSERT INTO  doctor(DoctorID,DoctorName,Email,PhoneNumber,DoctorType,WorkHospital) "
							+ "	VALUES (?,?,?,?,?,?)");

			ps.setInt(1, 0);
			ps.setString(2, doctor.getDoctorName());
			ps.setString(3, doctor.getEmail());
			ps.setInt(4, doctor.getPhoneNumber());
			ps.setString(5, doctor.getDoctorType());
			ps.setString(6, doctor.getWorkHospital());

			ps.execute();
			String newdoctors = "Doctors";
			 //connection.close();
			output = "{\"status\":\"success\", \"data\": \"" + newdoctors + "\"}"; 

		}
		 catch (Exception e)
		 {
			 output = "{\"status\":\"error\", \"data\":\"Error while doctor the item.\"}"; 
		 System.err.println(e.getMessage());
		 }
		 return output; 

		
	}

	public String readDoctors() {
		String output="";
		
		try {
			connection = DBConnection.getConnection();
			if (connection == null) {
				System.err.println("connecting failed.");
			}
			
			// Prepare the html table to be displayed
			

			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery("select * from doctor");
			
			

			// iterate through the rows in the result set
			while (rs.next()) {
				
				output+="<tr>" +
						"<td id=\'UpdateDoctorID\' name=\'UpdateDoctorID\'>" + 
						"<input  value=\'"+rs.getInt("DoctorID")+"\' type=\'hidden\'>" + 
						 rs.getInt("DoctorID") +
						"</td> "
						+"<td>"+rs.getString("DoctorName")+"</td>"
						+"<td>"+rs.getString("Email")+"</td>"
						+"<td>"+rs.getInt("PhoneNumber")+"</td>"
						+"<td>"+rs.getString("DoctorType")+"</td>"
						+"<td>"+rs.getString("WorkHospital")+"</td>"
						+"<td>" + 
						"<input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'>" + 
						"</td>" +
						"<td>" + 
						"<input name='btnRemove' type='button'" + 
						"value='Remove' class='btnRemove btn btn-danger' data-doctorid='"+rs.getInt("DoctorID")+"'></td>" + 
						"</tr>";

				
			}
			
//			connection.close();

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return output;
	}

	public String updatedoctor(Doctor doctor) {
		String output = "";
		try {
			connection = DBConnection.getConnection();
			if (connection == null) {
				return "Error while connecting to the database for updating.";
			}
			// create a prepared statement
			ps = connection.prepareStatement(
					"UPDATE doctor SET DoctorName=?,Email=?,PhoneNumber=?,DoctorType=?,WorkHospital=? WHERE DoctorID=?");

			// binding values
			ps.setString(1, doctor.getDoctorName());
			ps.setString(2, doctor.getEmail());
			ps.setInt(3,doctor.getPhoneNumber());
			ps.setString(4, doctor.getDoctorType());
			ps.setString(5, doctor.getWorkHospital());
			ps.setInt(6, doctor.getDoctorID());
			// execute the statement
			ps.execute();
			//connection.close();
			String newdoctors ="doctors";
			output = "{\"status\":\"success\", \"data\": \"" + newdoctors + "\"}";
		} catch (Exception e) {
			output = "{\"status\":\"error\", \"data\":\"Error while updating the item.\"}";
			System.err.println(e.getMessage());
		}
		return output;
	}

	public String deleteDoctor(String DoctorID) {
		String output = "";
		try {
			connection = DBConnection.getConnection();
			if (connection == null) {
				return "Error while connecting to the database for deleting.";
			}
			// create a prepared statement

			connection = DBConnection.getConnection();
			ps = connection.prepareStatement("delete from doctor where DoctorID=?");
			// binding values
			ps.setInt(1, Integer.parseInt(DoctorID));
			// execute the statement
			ps.execute();
			//connection.close();
			String newdoctors = readDoctors();
			output = "{\"status\":\"success\", \"data\": \"" + newdoctors + "\"}";
		} catch (Exception e) {
			output = "{\"status\":\"error\", \"data\":\"Error while deleting the item.\"}";
			System.err.println(e.getMessage());
		}
		return output;
	}
	
	
	public Doctor searchDoctors(String id) {
		Doctor doc = new Doctor();
		try {
			connection = DBConnection.getConnection();
			if (connection == null) {
				System.err.println("connecting failed.");
			}
			// Prepare the html table to be displayed
			

			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery("select * from doctor where DoctorID="+id+"");
			

			// iterate through the rows in the result set
			
			while (rs.next()) {
				
				doc.setDoctorID(rs.getInt("DoctorID"));
				doc.setDoctorName(rs.getString("DoctorName"));
				doc.setPhoneNumber(rs.getInt("PhoneNumber"));
				doc.setEmail(rs.getString("Email"));
				doc.setDoctorType(rs.getString("DoctorType"));
			}
			//connection.close();

		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return doc;
	}




}
