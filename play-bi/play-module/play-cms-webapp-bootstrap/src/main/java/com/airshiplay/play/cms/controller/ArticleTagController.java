package com.airshiplay.play.cms.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.airshiplay.play.cms.entity.ArticleTagEntity;
import com.airshiplay.play.cms.service.ArticleTagEntityService;
import com.airshiplay.play.repo.domain.Result;
import com.airshiplay.play.repo.domain.ResultGeneric;
import com.google.common.collect.Lists;
import com.querydsl.core.types.Predicate;

@Controller
@RequestMapping("/cms/articleTag")
public class ArticleTagController {

	@Autowired
	private ArticleTagEntityService articleTagEntityService;

	@RequestMapping(value = "/articleTagList.view", method = RequestMethod.GET)
	public String getArticleCategoryList() {
		return "/bootstrap/cms/articleTag/articleTagList";
	}
	
	@RequestMapping(value = {"/create.view"}, method = RequestMethod.GET)
	public String createArticleTag(Model model) {
		return "/bootstrap/cms/articleTag/articleTagForm";
	}
	@RequestMapping(value = {"/edit/{id}.view"}, method = RequestMethod.GET)
	public String getArticleCategoryCreate(Model model,@PathVariable Long id) {
		model.addAttribute("articleTag", articleTagEntityService.findOne(id));
		return "/bootstrap/cms/articleTag/articleTagForm";
	}
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public ResultGeneric<List<ArticleTagEntity>> doList(Predicate predicate) {
		List<ArticleTagEntity> result = Lists
				.newArrayList(articleTagEntityService.findAll(predicate));
		return ResultGeneric.success(result);
	}

	@RequestMapping(value = "/page", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public Page<ArticleTagEntity> doPage(Predicate predicate, Pageable pageable) {
		return articleTagEntityService.findAll(predicate, pageable);
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public Result doSave(@ModelAttribute @Valid ArticleTagEntity articleTag,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return Result.validateError();
		}

		articleTagEntityService.save(articleTag);

		return Result.success();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST, params = "id")
	@ResponseBody
	public Result delete(@RequestParam(value = "id") ArticleTagEntity entity) {
		articleTagEntityService.delete(entity);
		return Result.success();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST, params = "ids")
	@ResponseBody
	public Result batchDelete(
			@RequestParam(value = "ids") ArticleTagEntity[] entities) {
		for (ArticleTagEntity entity : entities) {
			articleTagEntityService.delete(entity);
		}

		return Result.success();
	}
}