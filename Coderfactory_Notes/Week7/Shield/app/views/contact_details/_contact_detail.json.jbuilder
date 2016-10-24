json.extract! contact_detail, :id, :address, :phone, :email, :twitter, :facebook, :url, :created_at, :updated_at
json.url contact_detail_url(contact_detail, format: :json)