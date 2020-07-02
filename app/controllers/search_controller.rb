class SearchController < ApplicationController
   def search_info
      @model = params["search"]["model"]
      @content = params["search"]["content"]
      @how = params["search"]["how"]
      @datas = search_for(@how, @model, @content)
   end
   
   def search
      @model = params["search"]["model"]
      @content = params["search"]["content"]
      @how = params["search"]["how"]
      @datas = search_for(@how, @model, @content)
   end

  private
  def match(model, content)
    if model == 'user'
      User.where(name: content).or(User.where(gender: content,)).or(User.where(height: content))
      .or(User.where(favorite_brand: content))
    elsif model == 'styiling'
      Styiling.where(gender: content).or(Styiling.where(item_one: content)).or(Styiling.where(brand_one: content)).or(Styiling.where(item_two: content)).or(Styiling.where(brand_two: content))
      .or(Styiling.where(item_three: content)).or(Styiling.where(brand_three: content)).or(Styiling.where(item_four: content)).or(Styiling.where(brand_four: content))
      .or(Styiling.where(item_five: content)).or(Styiling.where(brand_five: content)).or(Styiling.where(item_six: content)).or(Styiling.where(brand_six: content)).or(Styiling.where(item_seven: content))
      .or(Styiling.where(brand_seven: content)).or(Styiling.where(item_eight: content)).or(Styiling.where(brand_eight: content))
    end
  end

  def forward(model, content)
    if model == 'user'
      User.where("name LIKE ?", "%#{content}%").or(User.where("gender LIKE ?", "%#{content}%"))
      .or(User.where("height LIKE ?", "%#{content}%")).or(User.where("favorite_brand LIKE ?", "%#{content}%"))
    elsif model == 'styiling'
    Styiling.where("gender LIKE ?", "%#{content}%").or(Styiling.where("item_one LIKE ?", "%#{content}%")).or(Styiling.where("brand_one LIKE ?", "%#{content}%")).or(Styiling.where("item_two LIKE ?", "%#{content}%")).or(Styiling.where("brand_two LIKE ?", "%#{content}%"))
    .or(Styiling.where("item_three LIKE ?", "%#{content}%")).or(Styiling.where("brand_three LIKE ?", "%#{content}%")).or(Styiling.where("item_four LIKE ?", "%#{content}%")).or(Styiling.where("brand_four LIKE ?", "%#{content}%"))
    .or(Styiling.where("item_five LIKE ?", "%#{content}%")).or(Styiling.where("brand_five LIKE ?", "%#{content}%")).or(Styiling.where("item_six LIKE ?", "%#{content}%")).or(Styiling.where("brand_six LIKE ?", "%#{content}%")).or(Styiling.where("item_seven LIKE ?", "%#{content}%"))
    .or(Styiling.where("brand_seven LIKE ?", "%#{content}%")).or(Styiling.where("item_eight LIKE ?", "%#{content}%")).or(Styiling.where("brand_eight LIKE ?", "%#{content}%"))
    end
  end

  def backward(model, content)
    if model == 'user'
       User.where("name LIKE ?", "%#{content}%").or(User.where("gender LIKE ?", "%#{content}%"))
      .or(User.where("height LIKE ?", "%#{content}%")).or(User.where("favorite_brand LIKE ?", "%#{content}%"))
    elsif model == 'styiling'
    Styiling.where("gender LIKE ?", "%#{content}%").or(Styiling.where("item_one LIKE ?", "%#{content}%")).or(Styiling.where("brand_one LIKE ?", "%#{content}%")).or(Styiling.where("item_two LIKE ?", "%#{content}%")).or(Styiling.where("brand_two LIKE ?", "%#{content}%"))
    .or(Styiling.where("item_three LIKE ?", "%#{content}%")).or(Styiling.where("brand_three LIKE ?", "%#{content}%")).or(Styiling.where("item_four LIKE ?", "%#{content}%")).or(Styiling.where("brand_four LIKE ?", "%#{content}%"))
    .or(Styiling.where("item_five LIKE ?", "%#{content}%")).or(Styiling.where("brand_five LIKE ?", "%#{content}%")).or(Styiling.where("item_six LIKE ?", "%#{content}%")).or(Styiling.where("brand_six LIKE ?", "%#{content}%")).or(Styiling.where("item_seven LIKE ?", "%#{content}%"))
    .or(Styiling.where("brand_seven LIKE ?", "%#{content}%")).or(Styiling.where("item_eight LIKE ?", "%#{content}%")).or(Styiling.where("brand_eight LIKE ?", "%#{content}%"))
    end
  end

  def partical(model, content)
    if model == 'user'
     User.where("name LIKE ?", "%#{content}%").or(User.where("gender LIKE ?", "%#{content}%"))
      .or(User.where("height LIKE ?", "%#{content}%")).or(User.where("favorite_brand LIKE ?", "%#{content}%"))
    elsif model == 'styiling'
    Styiling.where("gender LIKE ?", "%#{content}%").or(Styiling.where("item_one LIKE ?", "%#{content}%")).or(Styiling.where("brand_one LIKE ?", "%#{content}%")).or(Styiling.where("item_two LIKE ?", "%#{content}%")).or(Styiling.where("brand_two LIKE ?", "%#{content}%"))
    .or(Styiling.where("item_three LIKE ?", "%#{content}%")).or(Styiling.where("brand_three LIKE ?", "%#{content}%")).or(Styiling.where("item_four LIKE ?", "%#{content}%")).or(Styiling.where("brand_four LIKE ?", "%#{content}%"))
    .or(Styiling.where("item_five LIKE ?", "%#{content}%")).or(Styiling.where("brand_five LIKE ?", "%#{content}%")).or(Styiling.where("item_six LIKE ?", "%#{content}%")).or(Styiling.where("brand_six LIKE ?", "%#{content}%")).or(Styiling.where("item_seven LIKE ?", "%#{content}%"))
    .or(Styiling.where("brand_seven LIKE ?", "%#{content}%")).or(Styiling.where("item_eight LIKE ?", "%#{content}%")).or(Styiling.where("brand_eight LIKE ?", "%#{content}%"))
    end
  end

  def search_for(how, model, content)
    case how
    when 'match'
      match(model, content)
    when 'forward'
      forward(model, content)
    when 'backward'
      backward(model, content)
    when 'partical'
      partical(model, content)
    end
  end
end
