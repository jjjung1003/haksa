package kr.co.haksa.dto;

public class StudentDto {
   private int id;
   private String name, hakbun,zip,juso,juso_etc,hphone,birth,writeday;
   
   
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getHakbun() {
	return hakbun;
}
public void setHakbun(String hakbun) {
	this.hakbun = hakbun;
}
public String getZip() {
	return zip;
}
public void setZip(String zip) {
	this.zip = zip;
}
public String getJuso() {
	return juso;
}
public void setJuso(String juso) {
	this.juso = juso;
}
public String getJuso_etc() {
	return juso_etc;
}
public void setJuso_etc(String juso_etc) {
	this.juso_etc = juso_etc;
}
public String getHphone() {
	return hphone;
}
public void setHphone(String hphone) {
	this.hphone = hphone;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
public String getWriteday() {
	return writeday;
}
public void setWriteday(String writeday) {
	this.writeday = writeday;
}
   
   
}
