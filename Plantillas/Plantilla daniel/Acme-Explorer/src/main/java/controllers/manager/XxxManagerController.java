
package controllers.manager;

import java.util.ArrayList;
import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.ManagerService;
import services.TripService;
import services.XxxService;
import controllers.AbstractController;
import domain.Manager;
import domain.Trip;
import domain.Xxx;

@Controller
@RequestMapping("/xxx/manager")
public class XxxManagerController extends AbstractController {

	// Services --------------------------------------------------------------
	@Autowired
	private XxxService		xxxService;

	@Autowired
	private ManagerService	managerService;

	@Autowired
	private TripService		tripService;


	// Constructors -----------------------------------------------------------
	public XxxManagerController() {

	}

	// Listing ----------------------------------------------------------------
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView result;

		Collection<Xxx> xxxs;
		Manager managerConnected;

		managerConnected = this.managerService.findByPrincipal();
		xxxs = new ArrayList<Xxx>();
		xxxs = managerConnected.getXxxs();

		result = new ModelAndView("xxx/list");
		result.addObject("xxxs", xxxs);
		result.addObject("requestURI", "xxx/manager/list.do");

		return result;

	}

	// Creation ---------------------------------------------------------------
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {

		ModelAndView result;
		Xxx xxx;

		xxx = this.xxxService.create();

		result = this.createEditModelAndView(xxx);

		return result;
	}

	// Edition ----------------------------------------------------------------

	//Edit
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam int xxxId) {
		ModelAndView result;
		Xxx xxx;

		xxx = this.xxxService.findOne(xxxId);
		Assert.notNull(xxx);
		result = this.createEditModelAndView(xxx);

		return result;
	}

	//Save
	@RequestMapping(value = "/edit", method = RequestMethod.POST, params = "save")
	public ModelAndView save(@Valid Xxx xxx, BindingResult bindingResult) {
		ModelAndView result;

		if (bindingResult.hasErrors())
			result = this.createEditModelAndView(xxx);
		else
			try {
				this.xxxService.save(xxx);
				result = new ModelAndView("redirect:list.do");
			} catch (Throwable oops) {
				result = this.createEditModelAndView(xxx, "xxx.commit.error");
			}
		return result;
	}

	//Delete
	@RequestMapping(value = "/edit", method = RequestMethod.POST, params = "delete")
	public ModelAndView delete(Xxx xxx, BindingResult binding) {
		ModelAndView result;
		if (binding.hasErrors())
			result = this.createEditModelAndView(xxx);
		else
			try {
				this.xxxService.delete(xxx);
				result = new ModelAndView("redirect:list.do");
			} catch (Throwable oops) {
				result = this.createEditModelAndView(xxx, "xxx.commit.error");
			}
		return result;
	}

	//Display

	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public ModelAndView display(@RequestParam final int xxxId) {
		ModelAndView result;
		Xxx xxx;

		xxx = this.xxxService.findOne(xxxId);
		result = new ModelAndView("xxx/display");
		result.addObject("xxx", xxx);

		return result;
	}

	protected ModelAndView createEditModelAndView(Xxx xxx) {

		Assert.notNull(xxx);
		ModelAndView result;
		result = this.createEditModelAndView(xxx, null);
		return result;
	}

	protected ModelAndView createEditModelAndView(Xxx xxx, String messageCode) {

		ModelAndView result;
		Collection<Trip> trips;

		trips = new ArrayList<Trip>();
		trips = this.tripService.findAll();

		result = new ModelAndView("xxx/edit");
		result.addObject("xxx", xxx);
		result.addObject("trips", trips);
		result.addObject("message", messageCode);
		result.addObject("requestURI", "xxx/manager/edit.do");

		return result;

	}
}
