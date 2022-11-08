
import SwiftUI

struct ContentView: View {
    @State var taskKinds = 0
    @State var dayTasks = [
        TaskData(taskText: "料理", check: true),
        TaskData(taskText: "散歩", check: true),
    ]
    
    @State var weekTasks = [
        TaskData(taskText: "書類提出", check: true),
        TaskData(taskText: "課題提出", check: true),
    ]
    
    @State var monthTasks = [
        TaskData(taskText: "確定申告", check: true),
        TaskData(taskText: "口座開設", check: true),
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
                Picker(selection: $taskKinds, label: Text("タスクの種類")) {
                    Text("Day")
                        .tag(0)
                    Text("Week")
                        .tag(1)
                    Text("Month")
                        .tag(2)
                }
                .frame(width: 300)
                .pickerStyle(.segmented)
                List {
                    Section(header: Text("Tasks")){
                        switch taskKinds {
                        case 0:
                            ForEach(dayTasks) { task in
                                Text(task.taskText)
                            }
                        case 1:
                            ForEach(weekTasks) { task in
                                Text(task.taskText)
                            }
                        case 2:
                            ForEach(monthTasks) { task in
                                Text(task.taskText)
                            }
                        default:
                            ForEach(dayTasks) { task in
                                Text(task.taskText)
                            }
                        }
                        NavigationLink(destination: addTaskView()) {
                            Image(systemName: "plus")
                        }
                    }
                }
            }
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
