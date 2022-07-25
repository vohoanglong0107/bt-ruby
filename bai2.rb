class HocSinh
    attr_accessor :ten, :toan, :van, :anh
    def initialize(ten, toan, van, anh)
        @ten = ten
        @toan = toan
        @van = van
        @anh = anh
    end
    def tinh_diem_trung_binh
        (@toan + @van + @anh) / 3
    end
end

danh_sach_hoc_sinh = Hash.new

while _input = gets
    if _input
        _input = _input.chomp.split(" ")
        ten, *diem = _input
        toan, van, anh = diem.map(&:to_i)
        hocsinh = HocSinh.new(ten, toan, van, anh)
        danh_sach_hoc_sinh[ten] = {
            toan: toan,
            van: van,
            anh: anh,
            avg: hocsinh.tinh_diem_trung_binh
        }
    end
end

puts "Danh sach hoc sinh:"
danh_sach_hoc_sinh.each do |ten, diem|
    puts "Ten: #{ten}, Toan: #{diem[:toan]}, Van: #{diem[:van]}, Anh: #{diem[:anh]}, Diem trung binh: #{diem[:avg]}"
end

puts "Hoc sinh co diem trung binh cao nhat: #{danh_sach_hoc_sinh.max_by {|ten, diem| diem[:avg]}}"
puts "3 hoc sinh co diem trung binh cao nhat: #{danh_sach_hoc_sinh.max_by(3) {|ten, diem| diem[:avg]}}"