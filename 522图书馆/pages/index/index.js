var name='';
Page({

  /**
   * 页面的初始数据
   */
  data: {
    items: [
      { name: '图书编号', checked: 'true' },
      { name: '书名' },  
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
    var judge = 0
    if (this.answer) {
      judge = this.answer
    }
    var formdata = ev.detail.value
    if (judge == 0) {
    wx.request({
      url: 'http://localhost:8080/BookInfo?dispatch=getbyid',
      method: 'get',
      data: formdata,
      success: function (result) {
        //  console.log(result.data.bookId)
        wx.navigateTo({
          url: '/pages/bookdetail/bookdetail?id=' + result.data.bookId,
        })
      }
    })
  }
  else if(judge==1){
      var formdata1 = ev.detail.value
      name = formdata1['id']     
      wx.request({
        url: 'http://localhost:8080/BookInfo?dispatch=getbyname',
        method: 'get',
        data: formdata,
        success: function (result1) {
           console.log(result1)
        //   that.setData({
        //     listData: result1.data,      
        //   })
            wx.navigateTo({
              url: '/pages/readtail2/readtail2?name=' +name,
            })
        }
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