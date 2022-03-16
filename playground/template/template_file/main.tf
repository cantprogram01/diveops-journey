data "template_file" "test" {
    template = file("test.tmpl")
    vars = {
        "mystring" = local.mystring
        # "mylist" = local.mylist
        "mylist" = join(",",local.mylist)
        "mapkeys" = join(",", keys(local.mymap))
        "mapvalues" = join(",",values(local.mymap))

        "myset" = join(",",local.myset)
    }
}

output "template" {
    value = data.template_file.test.rendered
}