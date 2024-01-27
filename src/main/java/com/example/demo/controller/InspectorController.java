package com.example.demo.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.IncidentRepository;
import com.example.demo.dao.OfficerRepository;
import com.example.demo.dao.RouteRepository;
import com.example.demo.dao.VehicleRepository;
import com.example.demo.models.Incident;
import com.example.demo.models.Officer;
import com.example.demo.models.Route;
import com.example.demo.models.Vehicle;

@Controller
public class InspectorController {

	@Autowired
	IncidentRepository incidentRepository;
	@Autowired
	RouteRepository routeRepository;
	@Autowired
	VehicleRepository vehicleRepository;
	@Autowired
	OfficerRepository  officerRepository;

	@GetMapping("/")
	public String welcome() {
		return "welcome ";
	}

	@GetMapping("/load")
	public String load() {
//		Route route1 = new Route("53587 South Drive", "204");
//		Route route2 = new Route("10 Straubel Terrace", "404");
//		Route route3 = new Route("5449 Shoshone Crossing", "99");
//		Route route4 = new Route("7848 Elgar Pass", "7");
//		Route route5 = new Route("26612 Forest Run Crossing", "7");
//		Route route6 = new Route("97 Fremont Park", "6961");
//		Route route7 = new Route("4 Waubesa Park", "94");
//		Route route8 = new Route("4969 Mariners Cove Pass", "38");
//		Route route9 = new Route("8 Fuller Pass", "9");
		// Route route10 = new Route("6268 Oak Street", "8539");
//
//		routeRepository.save(route1);
//		routeRepository.save(route2);
//		routeRepository.save(route3);
//		routeRepository.save(route4);
//		routeRepository.save(route5);
//		routeRepository.save(route6);
//		routeRepository.save(route7);
//		routeRepository.save(route8);
//		routeRepository.save(route9);
		// routeRepository.save(route10);
//
		// Vehicle vehicle1 = new Vehicle("Chevrolet", "Camaro", 2012, 44);
//		Vehicle vehicle2 = new Vehicle("Pontiac", "Bonneville", 1991, 49);
//		Vehicle vehicle3 = new Vehicle("GMC", "Canyon", 2004, 57);
//		Vehicle vehicle4 = new Vehicle("Bentley", "Continental GTC", 2011, 21);
//		Vehicle vehicle5 = new Vehicle("Ford", "F150", 1996, 54);
//		Vehicle vehicle6 = new Vehicle("Geo", "Tracker", 1993, 53);
//		Vehicle vehicle7 = new Vehicle("Mazda", "MPV", 1998, 30);
//		Vehicle vehicle8 = new Vehicle("Honda", "Accord", 1997, 21);
//		Vehicle vehicle9 = new Vehicle("Hyundai", "Tiburon", 2006, 24);
//		Vehicle vehicle10 = new Vehicle("Mazda", "Mazdaspeed 3", 2010, 43);
//
//		vehicleRepository.save(vehicle1);
//		vehicleRepository.save(vehicle2);
//		vehicleRepository.save(vehicle3);
//		vehicleRepository.save(vehicle4);
//		vehicleRepository.save(vehicle5);
//		vehicleRepository.save(vehicle6);
//		vehicleRepository.save(vehicle7);
//		vehicleRepository.save(vehicle8);
//		vehicleRepository.save(vehicle9);
//		vehicleRepository.save(vehicle10);
//
//		Officer officer1 = new Officer("Marnia", "Legal", "67345-0783");
//		Officer officer2 = new Officer("Ronnica", "Product Management", "55312-733");
//		Officer officer3 = new Officer("Carleton", "Support", "0641-6031");
//		Officer officer4 = new Officer("Debor", "Sales", "43857-0275");
//		Officer officer5 = new Officer("Bryn", "Support", "13107-070");
//		Officer officer6 = new Officer("Bride", "Accounting", "43857-0310");
//		Officer officer7 = new Officer("Debee", "Services", "47682-098");
//		Officer officer8 = new Officer("Clay", "Product Management", "49967-080");
//		Officer officer9 = new Officer("Ronalda", "Sales", "0615-6575");
		// Officer officer10 = new Officer("Shannon", "Human Resources", "60512-6152");
//
//		officerRepository.save(officer1);
//		officerRepository.save(officer2);
//		officerRepository.save(officer3);
//		officerRepository.save(officer4);
//		officerRepository.save(officer5);
//		officerRepository.save(officer6);
//		officerRepository.save(officer7);
//		officerRepository.save(officer8);
//		officerRepository.save(officer9);
		// officerRepository.save(officer10);
//
//
//		
//
//		Incident incident1 = new Incident("2020", "inc", route1, vehicle1, officer1);
//		Incident incident2 = new Incident("2020", "inc", route2, vehicle2, officer2);
//		Incident incident3 = new Incident("2020", "inc", route3, vehicle3, officer3);
//		Incident incident4 = new Incident("2020", "inc", route4, vehicle4, officer4);
//		Incident incident5 = new Incident("2020", "inc", route5, vehicle5, officer5);
//		Incident incident6 = new Incident("2020", "inc", route6, vehicle6, officer6);
//		Incident incident7 = new Incident("2020", "inc", route7, vehicle7, officer7);
//		Incident incident8 = new Incident("2020", "inc", route8, vehicle8, officer8);
//		Incident incident9 = new Incident("2020", "inc", route9, vehicle9, officer9);
//		Incident incident10 = new Incident("2020", "inc", route10, vehicle10, officer10);
//
//		incidentRepository.save(incident1);
//		incidentRepository.save(incident2);
//		incidentRepository.save(incident3);
//		incidentRepository.save(incident4);
//		incidentRepository.save(incident5);
//		incidentRepository.save(incident6);
//		incidentRepository.save(incident7);
//		incidentRepository.save(incident8);
//		incidentRepository.save(incident9);
//		incidentRepository.save(incident10);
//		Incident incident11 = new Incident("2020", "inci2", routeRepository.findById(10).orElse(null), vehicleRepository.findById(1).orElse(null), officerRepository.findById(10).orElse(null));
//		incidentRepository.save(incident11);
		return "welcome";
	}

	@GetMapping("/handleshowims")
	public String showims() {
		return "ims";
	}

	@GetMapping("/showallincidents")
	public String showAllIncidents(Model model) {

		List<Incident> incidents = incidentRepository.findAll();

		model.addAttribute("incidents", incidents);
		return "allIncidentsView";
	}

	@GetMapping("/searchincidentbyid")
	public String searchIncidentById(@RequestParam("incidentId") String incidentId, Model model) {
		Incident inc = incidentRepository.findById(Integer.valueOf(incidentId)).orElse(null);

		List<Incident> foundInc = Arrays.asList(inc);
		model.addAttribute("incidents", foundInc);
		return "allIncidentsView";
	}

	@GetMapping("/searchincidentbyplatenumber")
	public String searchIncidentByPlateNumber(@RequestParam("plateNumber") String plateNumber, Model model) {
		Vehicle vehicle = vehicleRepository.findById(Integer.valueOf(plateNumber)).orElse(null);
		Set<Incident> incidents = vehicle.getIncidents();

		model.addAttribute("incidents", incidents);

		return "allIncidentsView"; // Return the view to display the search results
	}

	@GetMapping("/searchincidentsbyrouteid")
	public String searchIncidentsByRouteId(@RequestParam("routeId") String routeId, Model model) {
		Route route = routeRepository.findById(Integer.valueOf(routeId)).orElse(null);
		Set<Incident> incidents = route.getIncidents();

		model.addAttribute("incidents", incidents);

		return "allIncidentsView";
	}
	
	@PostMapping("/deleteincidentbyid")
	public String deleteIncidentById(@RequestParam("incidentId") String incidentId, Model model) {
	    incidentRepository.deleteById(Integer.valueOf(incidentId));
	    List<Incident> incidents = incidentRepository.findAll();

		model.addAttribute("incidents", incidents);
		return "allIncidentsView";
	}
	
	@GetMapping("/updateincident")
	public String showUpdateIncidentForm(@RequestParam("id") String incidentId, Model model) {
	    Incident incident = incidentRepository.findById(Integer.valueOf(incidentId)).orElse(null);
	    List<Officer> officers = officerRepository.findAll();
	    List<Route> routes = routeRepository.findAll();
	    List<Vehicle> vehicles = vehicleRepository.findAll();
	    model.addAttribute("incident", incident);
	    model.addAttribute("officers", officers);
	    model.addAttribute("routes", routes);
	    model.addAttribute("vehicles", vehicles);
	    return "updateIncident";
	}

	@PostMapping("/updateincident")
	public String updateIncident(@ModelAttribute("incident") Incident incident, Model model) {
		Integer i = (int) (long)incident.getId();
		Incident existingIncident = incidentRepository.findById(i).orElse(null);
		incident.setIncidentDate(existingIncident.getIncidentDate());
	    incidentRepository.save(incident);
	    List<Incident> incidents = incidentRepository.findAll();

		model.addAttribute("incidents", incidents);
		return "allIncidentsView";
	}

	@GetMapping("/addIncident")
	public ModelAndView showAddIncidentForm() {
	   ModelAndView mav = new ModelAndView("addIncident");
	   mav.addObject("officers", officerRepository.findAll());
	   mav.addObject("routes", routeRepository.findAll());
	   mav.addObject("vehicles", vehicleRepository.findAll());
	   return mav;
	}
	
	@PostMapping("/submit-incident")
	public String submitIncident(@ModelAttribute("incident") Incident incident, Model model) {
	    incidentRepository.save(incident);
	    model.addAttribute("successMessage", "Incident submitted successfully.");
	    List<Incident> incidents = incidentRepository.findAll();

		model.addAttribute("incidents", incidents);
		return "allIncidentsView";	}


}
