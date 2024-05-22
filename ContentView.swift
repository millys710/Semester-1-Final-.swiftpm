import SwiftUI

struct ContentView: View {
    @State var payCheck = 0
    @State var allowance = 0
    @State var gradGifts = 0
    @State var netflix = 0
    @State var cellPhone = 0
    @State var entertainment = 0
    @State var assets = 0
    @State var liabilities = 0
    @State var netWorth = 0
    @State var showAlert = false
    @State var panda = false
    var body: some View {
        VStack {
            Text("Assets")
                .font(.title)
                .foregroundStyle(.green)
            Text("Enter Paycheck")
                .padding(.trailing, 300)
            .foregroundStyle(.green)
            TextField("Enter Paycheck", value: $payCheck, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Enter Allowance")
            .padding(.trailing, 300)
            .foregroundStyle(.green)
            TextField("Enter Allowance", value: $allowance, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Enter Graduation Gifts")
            .padding(.trailing, 250)
            .foregroundStyle(.green)
            TextField("Enter Graduation Gifts", value: $gradGifts, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Liabilities")
                .font(.title)
            .foregroundStyle(.cyan)
            Text("Enter Netflix Bill")
            .padding(.trailing, 300)
            .foregroundStyle(.cyan)
            TextField("Enter Netflix Bill", value: $netflix, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
             Text("Enter Cell Phone Bill")
            .padding(.trailing, 270)
            .foregroundStyle(.cyan)
            TextField("Enter Cell Phone Bill", value: $cellPhone, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
             Text("Enter Other Entertainment Bill")
            .padding(.trailing, 190)
            .foregroundStyle(.cyan)
            TextField("Enter Other Entertainment Bills", value: $entertainment, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
        VStack{
            Button(action: {showAlert = true
                assets = payCheck + allowance + gradGifts
                liabilities = netflix + cellPhone + entertainment
                netWorth = assets - liabilities
            }, label: {
                Text("Press To Calculate Net Worth")         
                }).alert("Your Net Worth is \(netWorth)",isPresented: $showAlert){Button("OK", role: .cancel){
                    
                }} .foregroundStyle(.purple)
            Button(action: {
                panda = true
                payCheck = 0
                allowance = 0
                gradGifts = 0
                netflix = 0
                cellPhone = 0
                entertainment = 0
            }, label: {
                Text("Clear TextFields")
            }).foregroundStyle(.pink)
            NavigationView{
                NavigationLink("Go To Images"){
                    ImageView()
                }
            }.foregroundStyle(.yellow)
            
            }
        }
//    func Panda (){
//        if panda == true {
//            Image (systemName: "Panda")
//        }
//        else {
//            Text("Nothing")
//        }
//    }
    }

