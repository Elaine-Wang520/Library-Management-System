// pages/adCheckBook/adCheckBook.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    items: [
      { name: '借阅号', checked: 'true' },
      { name: '图书编号' },
      { name: '图书名' },
    ],
    answer: 0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },
  radioChange(e) {
    console.log('radio发生change事件，携带value值为：', e.detail.value)
    this.answer = e.detail.value
  },
  handleAdd: function (ev) {
    var that=this
    var formdata = ev.detail.value
    var judge = 0
    if (this.answer) {
      judge = this.answer
    }
    if(judge==0){
    wx.request({
      url: 'http://localhost:8080/BorrowRecord?dispatch=getBorrowbyUserId',
      method: 'get',
      data: formdata,
      success: function (result) {
        console.log(result.data)
        that.setData({
          listData: result.data
        })
      }
      })
    }
    else if(judge==1){
      var formdata1 = ev.detail.value
      var bookId = formdata1['UserId']  
      wx.navigateTo({
        url: '/pages/record1/record1?bookId=' + bookId,
      })
    }
    else if (judge == 2){
      var formdata1 = ev.detail.value
      var name = formdata1['UserId']
      wx.navigateTo({
        url: '/pages/record2/record2?bookname=' + name,
      })
    }
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