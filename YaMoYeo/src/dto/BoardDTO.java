package dto;

import java.sql.Date;

public class BoardDTO {
		
	private int    zNum;
	private String zId;
	private String zTitle;
	private String zCategories;
	private String zContents;
	private Date   zDate;
	private int	   zHits;
	private String zFile;
	
	public int getzNum() {
		return zNum;
	}
	public void setzNum(int zNum) {
		this.zNum = zNum;
	}
	public String getzId() {
		return zId;
	}
	public void setzId(String zId) {
		this.zId = zId;
	}
	public String getzTitle() {
		return zTitle;
	}
	public void setzTitle(String zTitle) {
		this.zTitle = zTitle;
	}
	public String getzCategories() {
		return zCategories;
	}
	public void setzCategories(String zCategories) {
		this.zCategories = zCategories;
	}
	public String getzContents() {
		return zContents;
	}
	public void setzContents(String zContents) {
		this.zContents = zContents;
	}
	public Date getzDate() {
		return zDate;
	}
	public void setzDate(Date zDate) {
		this.zDate = zDate;
	}
	public int getzHits() {
		return zHits;
	}
	public void setzHits(int zHits) {
		this.zHits = zHits;
	}
	public String getzFile() {
		return zFile;
	}
	public void setzFile(String zFile) {
		this.zFile = zFile;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [zNum=" + zNum + ", zId=" + zId + ", zTitle=" + zTitle + ", zCategories=" + zCategories
				+ ", zContents=" + zContents + ", zDate=" + zDate + ", zHits=" + zHits + ", zFile=" + zFile + "]";
	}
	
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BoardDTO(int zNum, String zId, String zTitle, String zCategories, String zContents, Date zDate, int zHits,
			String zFile) {
		super();
		this.zNum = zNum;
		this.zId = zId;
		this.zTitle = zTitle;
		this.zCategories = zCategories;
		this.zContents = zContents;
		this.zDate = zDate;
		this.zHits = zHits;
		this.zFile = zFile;
	}
	
	
			
}
