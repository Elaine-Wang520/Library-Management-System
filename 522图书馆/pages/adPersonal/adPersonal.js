// pages/adPersonal/adPersonal.js
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
    this.setData({ goodsid: options.bar_code })
    var formdata = { 'id': this.data.goodsid }
    var str = ''
    str += '&id=' + formdata['id'] + ''
    var that = this
    console.log(str)
    wx.request({
      url: 'http://localhost:8080/BookAdmin?dispatch=getbyid' + str,
      method: 'get',
      success: function (result) {
        console.log(result)
        that.setData({
          listData: result.data
        })
      }
    })
  },
  handleAdd: function (ev) {
    var that = this;
    var formdata = ev.detail.value
    console.log(formdata)
    var bar_code = this.data.goodsid
    var repwd = formdata['AdPassword']
    console.log(repwd)
    var phone = formdata['AdPhone']
    var email = formdata['AdEmail']
    var id = parseInt(bar_code);
    console.log(id)
    console.log(phone)
    wx.request({
      url: 'http://localhost:8080/BookAdmin?dispatch=updatePassWord' + '&AdId=' + id + '&AdPassword=' + repwd + '&AdPhone=' + phone + '&AdEmail=' + email+'',
      method: 'post',
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