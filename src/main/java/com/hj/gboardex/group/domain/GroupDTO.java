package com.hj.gboardex.group.domain;

public class GroupDTO {
    private int userID;
    private String groupURL;

    public GroupDTO(int userID, String groupURL) {
        this.userID = userID;
        this.groupURL = groupURL;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getGroupURL() {
        return groupURL;
    }

    public void setGroupURL(String groupURL) {
        this.groupURL = groupURL;
    }
}
