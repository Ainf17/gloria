require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { analogues: @article.analogues, article_type: @article.article_type, color: @article.color, country: @article.country, description: @article.description, fragile: @article.fragile, height: @article.height, manufacturer: @article.manufacturer, name: @article.name, packing_type: @article.packing_type, period_save: @article.period_save, price_per_unit: @article.price_per_unit, price_per_unit: @article.price_per_unit, radioactive: @article.radioactive, special_conditions: @article.special_conditions, special_features: @article.special_features, technical_features: @article.technical_features, toxic: @article.toxic, transport: @article.transport, units: @article.units, volume_brutto: @article.volume_brutto, volume_netto: @article.volume_netto, weight_brutto: @article.weight_brutto, weight_netto: @article.weight_netto, width: @article.width } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { analogues: @article.analogues, article_type: @article.article_type, color: @article.color, country: @article.country, description: @article.description, fragile: @article.fragile, height: @article.height, manufacturer: @article.manufacturer, name: @article.name, packing_type: @article.packing_type, period_save: @article.period_save, price_per_unit: @article.price_per_unit, price_per_unit: @article.price_per_unit, radioactive: @article.radioactive, special_conditions: @article.special_conditions, special_features: @article.special_features, technical_features: @article.technical_features, toxic: @article.toxic, transport: @article.transport, units: @article.units, volume_brutto: @article.volume_brutto, volume_netto: @article.volume_netto, weight_brutto: @article.weight_brutto, weight_netto: @article.weight_netto, width: @article.width } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
