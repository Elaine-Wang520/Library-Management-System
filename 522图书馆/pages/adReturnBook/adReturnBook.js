// pages/adReturnBook/adReturnBook.js
var util = require('../../utils/util.js'); 
var returnTime;
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
    returnTime = util.formatTime(new Date());
  },
  handleAdd: function (ev) {
    var that=this
    var formdata = ev.detail.value
    var userId=formdata['UserId']
    var bookId = formdata['UserId']
    var len=0;
    wx.request({
      url: 'http://localhost:8080/BorrowRecord?dispatch=updateBorrowRecordbyid&UserId=' + userId + '&BookId=' + bookId + '&ReturnTime=' + returnTime + '&State='+ 1 +'',
      method: 'get',
      data: formdata,
      success: function (result) {
        console.log(result.data)
      }
    })
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=getUserInfo&id='+userId+'',
      method: 'get',
      data: formdata,
      success: function (result) {
        console.log(result.data)
        len= result.data.lendedNum+1
      }
    })
    wx.request({
      url: 'http://localhost:8080/UserInfo?dispatch=updateBorrowRecordbyid&UserId=' + userId + '&LendedNum=' + len+'',
      method: 'get',
      data: formdata,
      success: function (result) {
        console.log(result.data)
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