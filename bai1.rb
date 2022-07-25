$a

def cau1()
    puts "Nhap vao mang 5 chu so"
    $a = STDIN.gets.chomp.split(" ").map(&:to_i)
    if ($a.length != 5)
        puts "Nhap sai, mac dinh mang 5 so 0"
        $a = [0,0,0,0,0]
    end
    puts "Mang vua nhap la #{$a}"
end

def cau2()
    print "Tong cua mang la " 
    puts $a.sum
end

def cau3()
    proc = Proc.new {|x| x != 6 && x != 7 ? x * x : x}
    puts "Luy thua cua mang ngoai tru so 6 7 la: #{$a.map(&proc)}" + "\n"
end

cau1()
cau2()
cau3()