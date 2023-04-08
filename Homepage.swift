//
//  Homepage.swift
//  Hyper
//
//  Created by Kevin Treial on 08.04.2023.
//

import SwiftUI
import Firebase



struct Homepage: View {
    init() {
        FirebaseApp.configure()
    }
    
    let Musclegroup = musclegroupsData
    
    var body: some View {
        // For navigation to work

        NavigationView {
            
            // Outer Stack
            VStack(alignment: .leading)
            {
                // Main Card View
                
                ZStack {
                    
                    Image("Chest")
                    // Where objects are stacked above each other
                    Image("Todays Exercise")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        . frame(width: 370, height: 250)
                    //vertical stack - Where objects are stacked vertically
                    // TOP BOX
                    VStack {
                        // Make more space
                        Spacer()
                        // Text
                        Text("Todays Exercise")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Text("For Chest")
                            .font(.title)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        // Overlay Box
                    }
                    .padding()
                    .frame(width: 370, height: 250)
                    .background(Color(red: 0.2, green: 0.2, blue: 0.2).opacity(0.4))
                    // Overlay box measurements
                }
                .frame(width: 370, height: 250)
                .cornerRadius(25)
                .clipped()
                .shadow(radius: 8)
                //.padding(.top, 20)
                .padding()
                
                // Lower Message
                Text("Muscle Groups")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                // Swipe Button
                
                // Stack where the inner elements are arranged or stacked
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {// Hstack, items are horizontally stacked, spacing - Give some space between the cards
                        // ForEach(0 ..< 14) { item in
                        ForEach(Musclegroup) { Musclegroup in
                            // Small Box / Day Card
                            
                                                  NavigationLink(destination: Musclegrouppage(Musclegroup: Musclegroup)) {
                                
                                // New Page
                                
                                ZStack {
                                    // Image("Cable Curls")
                                    Image(Musclegroup.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        . frame(height: 240)
                                    VStack {
                                        
                                        Spacer()
                                        
                                        Text(Musclegroup.image)
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.white)
                                        //  Text(Musclegroup.day)
                                        //     .font(.title)
                                        //      .fontWeight(.regular)
                                        //      .foregroundColor(.white)
                                    }
                                    .padding()
                                    .frame(width: 220, height: 240)
                                    .background(Color(red: 0.2, green: 0.2, blue: 0.2).opacity(0.4))
                                }
                                .frame(width: 170, height: 220)
                                .clipped() // Connects to background
                                .cornerRadius(20)
                                .shadow(radius: 8)
                            }// Day Card End
                        }
                    }
                    .padding() // Center Placement
                    //.offset(x: 0, y: -5)
                } // Move the bottom cards vertically up or down
                .offset(x: 0, y: -30)
                
                
                Spacer()
            } // Top Message
            
            .navigationBarTitle("Welcome, Kevin!")
        }
        
    }
    
}
 struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
       Homepage()
   }
}

                                  // STRUCTURE
struct Musclegroup: Identifiable {
    // Variable ID is being set to the returned unique identifier, generated from the method/function UUID()
    var id = UUID()
    // variable names with their respective types
    var muscle: String
    var image: String
    var routine: [String]
    // var bodyPart: String
    
}
                                     // DATA
let musclegroupsData = [
    Musclegroup(muscle: "Biceps" ,image: "Biceps" ,routine: ["1. Barbell Bicep Curl", "2. Breacher Curl", "3. Incline DB Curl", "4. Single Arm Breacher Curl", "5. DB Hammer Curl", "6. Cable Curl"]),
    Musclegroup(muscle: "Triceps", image: "Triceps", routine: ["1.Close Grip Barbell Press", "2.Dips", "3.Upright Double Rope Cable", "4.Upright Overhead Extension", "5.Bent Over Cable Extension"]),
    Musclegroup(muscle: "Shoulders", image: "Shoulders", routine: ["1. Seated Overhead DB Press", "2. Seated DB Lateral Raise", "3. Cable Lateral Raise", "4. Chest supported DB fly", "5. Rear Felt Fly Machine"]),
    Musclegroup(muscle: "Chest", image: "Chest", routine: ["DB Bench Press", "DB Bench Press", "3. Incline Cable Fly", "4. Decline Bench Barbell Press", "5. Incline Single Arm Cable Fly"]),
    Musclegroup(muscle: "Forearms", image: "Forearms", routine: ["-"]),
    Musclegroup(muscle: "Traps", image: "Traps", routine: ["-"]),
    Musclegroup(muscle: "Upper Back", image: "Upper Back", routine: ["1. Incline DB Rows", "2. Pullups", "3. Cable Rows", "ingle Arm Cable Pull", "5. Barbell Row Incline Bench"]),
    Musclegroup(muscle: "Abs", image: "Abs", routine: ["1. Hanging Knee Raise", "2. Reverse Crunch", "3.Ab Rollout", "4. Rope Crunch", "5.Plank"]),
    Musclegroup(muscle: "Neck", image: "Neck", routine: ["-"]),
    Musclegroup(muscle: "Lower Back", image: "Lower Back", routine: ["-"]),
    Musclegroup(muscle: "Glutes", image: "Glutes", routine: ["-"]),
    Musclegroup(muscle: "Hamstrings", image: "Hamstrings", routine: ["-"]),
    Musclegroup(muscle: "Calves", image: "Calves", routine: ["-"]),
    Musclegroup(muscle: "Quadriceps", image: "Quadriceps", routine: ["-"]),
    
]
