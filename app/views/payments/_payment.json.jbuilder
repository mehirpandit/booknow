json.extract! payment, :id, :card_type, :card_no, :exp_date, :cv_no, :created_at, :updated_at
json.url payment_url(payment, format: :json)
