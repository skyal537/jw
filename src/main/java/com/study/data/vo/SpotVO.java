package com.study.data.vo;

//관광지
public class SpotVO {

    private int spotId;

    private String spotTheme;

    private String cityId;

    private String spotPic;

    private String themeCode;

    private String spotNm;

    public int getSpotId() {
        return spotId;
    }

    public void setSpotId(int spotId) {
        this.spotId = spotId;
    }

    public String getSpotTheme() {
        return spotTheme;
    }

    public void setSpotTheme(String spotTheme) {
        this.spotTheme = spotTheme;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getSpotPic() {
        return spotPic;
    }

    public void setSpotPic(String spotPic) {
        this.spotPic = spotPic;
    }

    public String getThemeCode() {
        return themeCode;
    }

    public void setThemeCode(String themeCode) {
        this.themeCode = themeCode;
    }

    public String getSpotNm() {
        return spotNm;
    }

    public void setSpotNm(String spotNm) {
        this.spotNm = spotNm;
    }
}
