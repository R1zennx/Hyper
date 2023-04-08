//
//  Musclegrouppage.swift
//  Hyper
//
//  Created by Kevin Treial on 08.04.2023.
//

 import SwiftUI
 
 struct Musclegrouppage: View {
 
 var Musclegroup: Musclegroup
 
 var body: some View {
 VStack(alignment: .leading) {
 Text(Musclegroup.muscle)
 .padding(.leading, 30)
 .font(.title)
 .fontWeight(.semibold)
 
 //  Text(Musclegroup.image)
 
 List(Musclegroup.routine, id: \.self){ exercise in
 Text(exercise)
 }
 }
 }
 }
 
 struct Musclegrouppage_Previews: PreviewProvider {
 static var previews: some View {
 Musclegrouppage(Musclegroup: Musclegroup(muscle: "Biceps", image: "Biceps", routine: ["Cable Curls, 3 SETS, 6-10 Reps", ""]))
 Musclegrouppage(Musclegroup: Musclegroup(muscle: "Triceps", image: "Triceps", routine: ["Cable Curls, 4 SETS, 6-10 Reps", ""]))
 }
 }
 
