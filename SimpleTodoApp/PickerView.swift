

import SwiftUI

struct PickerView: View {
    @Binding var taskType: Int
    
    var body: some View {
        Picker(selection: $taskType, label: Text("タスクの種類")) {
            Text("Day")
                .tag(0)
            Text("Week")
                .tag(1)
            Text("Month")
                .tag(2)
        }
        .frame(width: 300)
        .pickerStyle(.segmented)
    }
}

//struct PickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickerView(taskType: 0)
//    }
//}
