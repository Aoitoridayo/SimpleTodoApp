
import SwiftUI

struct addTaskView: View {
    @State private var addTaskType = 0
    @State private var taskTitle = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(.white)
                .frame(width: 360, height: 200)
                .shadow(color: Color.gray, radius: 10, x: 0, y: 10)
            VStack {
                Text("タスクの種類")
                PickerView(taskType: $addTaskType)
                Text("タスクのタイトル")
                TextField("", text: $taskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 280)
            }
        }
    }
}

struct addTaskView_Previews: PreviewProvider {
    static var previews: some View {
        addTaskView()
    }
}
