package com.airshiplay.play.shop.repo;

import java.util.List;

import org.springframework.data.querydsl.binding.QuerydslBinderCustomizer;
import org.springframework.data.querydsl.binding.QuerydslBindings;

import com.airshiplay.play.repo.jpa.BaseJpaRepository;
import com.airshiplay.play.shop.entity.ProductCategoryEntity;
import com.airshiplay.play.shop.entity.ProductEntity;
import com.airshiplay.play.shop.entity.QProductEntity;

public interface ProductEntityRepository extends BaseJpaRepository<ProductEntity, Long>, QuerydslBinderCustomizer<QProductEntity> {

	List<ProductEntity> findTop3ByProductCategoryAndIdNot(ProductCategoryEntity productCategory, Long id);
	
	@Override
	default void customize(QuerydslBindings bindings, QProductEntity root) {
		bindings.bind(root.name).first((path, value) -> path.contains(value));
	}
}
