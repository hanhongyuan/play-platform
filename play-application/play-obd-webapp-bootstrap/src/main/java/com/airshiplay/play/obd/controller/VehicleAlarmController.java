package com.airshiplay.play.obd.controller;

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

import com.airshiplay.play.obd.entity.VehicleAlarmEntity;
import com.airshiplay.play.obd.service.VehicleAlarmEntityService;
import com.airshiplay.play.repo.domain.Result;
import com.querydsl.core.types.Predicate;

@Controller
@RequestMapping("/obd/vehicleAlarm")
public class VehicleAlarmController {

	@Autowired
	private VehicleAlarmEntityService vehicleAlarmEntityService;

	@RequestMapping(value = "/vehicleAlarmList.view", method = RequestMethod.GET)
	public String getList() {
		return "/bootstrap/obd/vehicleAlarm/vehicleAlarmList";
	}

	@RequestMapping(value = { "/create.view" }, method = RequestMethod.GET)
	public String create(Model model) {
		return "/bootstrap/obd/vehicleAlarm/vehicleAlarmForm";
	}

	@RequestMapping(value = { "/edit/{id}.view" }, method = RequestMethod.GET)
	public String edit(Model model, @PathVariable Long id) {
		model.addAttribute("vehicleAlarm", vehicleAlarmEntityService.findOne(id));
		return "/bootstrap/obd/vehicleAlarm/vehicleAlarmForm";
	}

	@RequestMapping(value = { "/view/{id}.view" }, method = RequestMethod.GET)
	public String view(Model model, @PathVariable Long id) {
		model.addAttribute("vehicleAlarm", vehicleAlarmEntityService.findOne(id));
		return "/bootstrap/obd/vehicleAlarm/vehicleAlarmView";
	}

	@RequestMapping(value = "/page", method = RequestMethod.POST)
	@ResponseBody
	public Page<VehicleAlarmEntity> doPage(Predicate predicate, Pageable pageable) {
		return vehicleAlarmEntityService.findAll(predicate, pageable);
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public Result doSave(@ModelAttribute @Valid VehicleAlarmEntity job, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return Result.validateError();
		}

		vehicleAlarmEntityService.save(job);

		return Result.success();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST, params = "id")
	@ResponseBody
	public Result delete(@RequestParam(value = "id") VehicleAlarmEntity entity) {
		vehicleAlarmEntityService.delete(entity);
		return Result.success();
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST, params = "ids")
	@ResponseBody
	public Result batchDelete(@RequestParam(value = "ids") VehicleAlarmEntity[] entities) {
		for (VehicleAlarmEntity entity : entities) {
			vehicleAlarmEntityService.delete(entity);
		}

		return Result.success();
	}
}