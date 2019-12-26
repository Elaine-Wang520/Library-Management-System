// pages/record1/record1.js
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
    var bookId = options.bookId;
    var that = this;
    wx.request({
      url: 'http://localhost:8080/BorrowRecord?dispatch=getbyBookId&BookId=' + bookId,
      method: 'get',
      success: function (result) {
        console.log(result)
        that.setData({
          detailD: result.data
        })
      }
    })
    wx.request({
      url: 'http://localhost:8080/BookInfo?dispatch=getbyid&id=' + bookId,
      method: 'get',
      success: function (result1) {
        console.log(result1)
        that.setData({
          listData: result1.data
        })
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