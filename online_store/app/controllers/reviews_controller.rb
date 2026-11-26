class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)

    if @review.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product),
                  alert: "Заповніть усі поля відгуку"
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product.reviews.find(params[:id]).destroy

    redirect_to product_path(@product), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:author, :body)
  end
end