class TitleValidator < ActiveModel::Validator
  def validate(record)
    clickbait = [/Won't Believe/i, /Secret/i, /Top [0-9]*/i, /Guess/i]
    unless clickbait.any? { |string| string.match record.title }
      record.errors[:title] << "Title does not include clickbait"
    end
  end
end