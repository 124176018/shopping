package com.aishang.po;




public class ProductExt extends Product {
    private CategoryExt categories;
    private ProductImage productImage;

    public ProductImage getProductImage() {
        return productImage;
    }

    public void setProductImage(ProductImage productImage) {
        this.productImage = productImage;
    }

    public CategoryExt getCategories() {
        return categories;
    }

    public void setCategories(CategoryExt categories) {
        this.categories = categories;
    }
}
