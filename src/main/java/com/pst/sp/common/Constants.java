package com.pst.sp.common;

public class Constants {
	public static final String INSERT_USER_QUERY ="insert into accounts(roll_number, user_name, password, security_qtn1, security_qtn1_ans, security_qtn2, security_qtn2_ans, created_by, created_at, updated_at) values(?,?,?,?,?,?,?,?,now(),now())";
	public static final String GET_ACCOUNT_QUERY ="select * from accounts where user_name = ? and password = ?";

}
