class NhanVien
  DEV = "DEV"
  QA = "QA"
  TESTER = "TESTER"
  INFRA = "INFRA"
  BO = "BO"
  BO_PHAN = [DEV, QA, TESTER, INFRA, BO]
  @@increment_id = 0
  attr_accessor :ten, :bo_phan
  attr_reader :id, :luong_co_ban

  def initialize(ten, bo_phan)
    @ten = ten
    @luong_co_ban = 3000
    if !BO_PHAN.include?(bo_phan)
      raise "Invalid bo phan #{bo_phan}"
    end

    @bo_phan = bo_phan
    @@increment_id += 1
    @id = @@increment_id
  end

  def to_s
    "ID: #{@id}, Ten: #{@ten}, Luong co ban: #{@luong_co_ban}, Bo phan: #{@bo_phan}"
  end

  def tinh_luong(so_gio)
    case @bo_phan
    when DEV
      @luong_co_ban * so_gio * 1.15
    when TESTER
      @luong_co_ban * so_gio * 1.1
    else
      @luong_co_ban * so_gio
    end
  end

  def luong_thang()
    tinh_luong(30 * 8)
  end

  def request_ot(so_gio)
    if (@bo_phan != DEV && @bo_phan != QA)
      return 0;
    end
    luong_co_ban * so_gio * 1.5
  end
end