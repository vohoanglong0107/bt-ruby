require './NhanVien'

@ds_nhan_vien = []

def setup()
  while _input = gets
    if _input
      ten, bo_phan = _input.chomp.split(", ")
      @ds_nhan_vien << NhanVien.new(ten, bo_phan)
    end
  end
end

def display(ds_nhan_vien = @ds_nhan_vien)
  ds_nhan_vien.each do |nhan_vien|
    puts nhan_vien.to_s
  end
  puts
end

def filter()
  filtered_nhan_vien = []
  @ds_nhan_vien.each do |nhan_vien|
    filtered_nhan_vien << nhan_vien if nhan_vien.luong_thang > 720000
  end
  display(filtered_nhan_vien)
end

def add()
  ten = "Nguyen Thi My"
  bo_phan = "QA"
  @ds_nhan_vien << NhanVien.new(ten, bo_phan)
  display
end

def main()
  puts "Nhap du lieu nhan vien: "
  setup
  puts "Danh sach nhan vien: "
  display
  puts "Danh sach nhan vien luong thang hon 720000: "
  filter
  puts "Add them nhan vien"
  add
end

main


