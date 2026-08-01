class ExcretionRecordsController < ApplicationController
  def index
    @excretion_records = ExcretionRecord.all
  end

  def create
    if params[:records]
      params[:records].each do |number, record_params|
        # チェックかサインが入力されている場合のみ保存・更新
        if record_params[:c_check].present? || record_params[:b_check].present? || record_params[:a_check].present? || record_params[:sign1].present? || record_params[:sign2].present?
          record = ExcretionRecord.find_or_initialize_by(number: number)
          record.update(
            c_check: record_params[:c_check] == "1",
            b_check: record_params[:b_check] == "1",
            a_check: record_params[:a_check] == "1",
            sign1: record_params[:sign1],
            sign2: record_params[:sign2]
          )
        end
      end
    end
    redirect_to excretion_records_path
  end
end