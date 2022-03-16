locals {
  mystring = "taco"
  mylist = ["chicken","beef","fish"]
  myset = toset(local.mylist)
  mymap = {
      meat = "chicken"
      cheese = "jack"
      shell = "soft"
  }
}