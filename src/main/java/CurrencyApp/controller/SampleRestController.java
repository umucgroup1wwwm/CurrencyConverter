//package CurrencyApp.controller;
//
//import CurrencyApp.service.TaskService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
//public class SampleRestController {
//
//    @Autowired
//    private TaskService taskService;
//
//    @GetMapping("/hello")
//    public String hello() {
//        return "Hello World!!!";
//    }
//
////	@GetMapping("/all-tasks")
////	public String allTasks(){
////		return taskService.findAll().toString();
////	}
////
////	@GetMapping("/save-task")
////	public String saveTask(@RequestParam String name, @RequestParam String desc){
////		CurrencyUser task = new CurrencyUser(name, desc, new Date(), false);
////		taskService.save(task);
////		return "CurrencyUser saved!";
////	}
////
////	@GetMapping("/delete-task")
////	public String saveTask(@RequestParam int id){
////		taskService.delete(id);
////		return "CurrencyUser deleted!";
////	}
//}
