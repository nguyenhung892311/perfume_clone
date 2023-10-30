class VoucherController < ApplicationController
  before_action :set_voucher, only: [:send_activation_email, :active_code]

  def send_activation_email(user, voucher_code)
    @user = params[:user]
    mail(to: @user.email, subject: 'Kích hoạt voucher')
  end

  def active_code
    if @voucher && @voucher.expire_at > Time.now
      current_user.apply_discount(discount_price)
      flash[:notice] = "Voucher đã được kích hoạt"
      redirect_to url ,voucher.destroy
    else
      flash[:notice] = "Voucher không hiệu lực hoặc đã hết hạn"
    end
  end

  def voucher_float
  end

  def
  end

  def apply_discount(discount_price)
    current_user.
  end

  def set_voucher
    @voucher = Voucher.find_by(code: params[:code])
  end
end


# table Voucher chứa danh sách tất cả mã code
#expire_at : thời hạn hiệu lực của mã voucher
#discount_price : số tiền giảm giá trong voucher
#Voucher có 2 dạng
 #là giảm theo %

#là giảm theo giá $

#Giảm phần trăm a để kiểu float

#Giá tiền để integer

#Giá tiền = giá bth - giá giảm

#Giá % thì bằng giá bth - ( giá bth x giá % chia 100)
