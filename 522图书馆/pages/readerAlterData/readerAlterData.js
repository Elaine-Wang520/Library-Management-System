// pages/readerAlterData/readerAlterData.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    phone: "",
    email: "" 
  },
  phoneinput: function (e) {
    this.setData({
      phone: e.detail.value
    })
  },
  emailinput: function (e) {
    this.setData({
      email: e.detail.value
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({ goodsid: options.bar_code })
    var formdata = { 'UserId': this.data.goodsid }
    var str = ''
    str += '&id=' + formdata['UserId'] + ''
    var that = this
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=getUserInfo' + str,
      method: 'get',
      success: function (result) {
        console.log(result.date)
        that.setData({
          listData: result.data
        })
      }
    })
  },
  handleAdd: function (ev){
    var that = this;
    var bar_code = this.data.goodsid
    var phone = that.data.phone
    var email = that.data.email
    var id=parseInt(bar_code);
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=updateUserInfo' + '&UserId=' + id + '&Phone=' + phone + '&Email=' + email,
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