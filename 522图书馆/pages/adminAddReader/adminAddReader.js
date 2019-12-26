// pages/adminAddReader/adminAddReader.js
Page({

  /**
   * 页面的初始数据
   */
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  handleAdd: function (ev) {
    var that = this;
    var formdata = ev.detail.value
    var userId = formdata['UserId']
    var userName =formdata['UserName']
    var password = formdata['Password']  
    var departments = formdata['Departments']
    var major = formdata['Major']
    var phone = formdata['Phone']
    var email = formdata['Email']
    var max = formdata['Max']
    var time = formdata['Time']
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=add' + '&UserId=' + userId + '&UserName=' + userName + '&Password=' + password + '&Departments=' + departments + '&Major=' + major + '&Phone=' + phone + '&Email=' + email + '&Max=' + max + '&Time=' + time +'&LendedNum='+0+'',
      method: 'get',
      success: function (result) {
        console.log(result.data);
      },
      fail: function (result) {
        console.log("修改失败！");
      }
    })
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})