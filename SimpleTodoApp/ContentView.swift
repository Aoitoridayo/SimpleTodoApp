
import SwiftUI

struct ContentView: View {
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
                List {
                    Section(header: Text("day")) {
                        ForEach(dayTasks) { task in
                            Text(task.taskText)
                        }
                    }
                    Section(header: Text("week")) {
                        ForEach(weekTasks) { task in
                            Text(task.taskText)
                        }
                    }
                    Section(header: Text("month")) {
                        ForEach(monthTasks) { task in
                            Text(task.taskText)
                        }
                    }
                }
                .navigationTitle("Task")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            //処理
                        }) {
                            Image(systemName: "plus.circle")
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
