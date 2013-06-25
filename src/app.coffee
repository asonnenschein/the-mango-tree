root = @
if not root.app? then app = root.app = {} else app = root.app

headNavbar = [
  new app.models.headNavbarModel
    id:"home"
    display:"Home"
    selected:true
,
  new app.models.headNavbarModel
    id:"takeoutmenu"
    display:"Takeout Menu"
    selected:false
,
  new app.models.headNavbarModel
    id:"cateringmenu"
    display:"Catering Menu"
    selected:false
,
  new app.models.headNavbarModel
    id:"healthbenefits"
    display:"Health Benefits"
    selected:false
,
  new app.models.headNavbarModel
    id:"contactus"
    display:"Contact Us"
    selected:false
,
  new app.models.headNavbarModel
    id:"blog"
    display:"Blog"
    selected:false
]

app.headNavbarCollection = new app.models.headNavbarCollection headNavbar

app.headNavbar = new app.views.headNavbarView
  el: $(".nav").first()
  collection: app.headNavbarCollection
app.headNavbar.render()