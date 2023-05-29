//
//  DentalInfoPage.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-24.
//

import SwiftUI

let text1 = """
Basic dental care involves brushing and flossing your teeth regularly, seeing your dentist and/or dental hygienist for regular checkups and cleanings, and eating a mouth-healthy diet, which means eating plenty of whole grain foods, vegetables and fruits, and protein foods.
"""

let text2 = """
Practicing basic dental care:
    - Prevents tooth decay
    - Prevents gum (periodontal) disease, which can damage gum tissue and the bones that support teeth, and in the long term can lead to the loss of teeth.
    - Shortens time with the dentist and dental hygienist, and makes the trip more pleasant.
    - Saves money. By preventing tooth decay and gum disease, you can reduce the need for fillings and other costly procedures.
    - Helps prevent bad breath. Brushing and flossing rid your mouth of the bacteria that cause bad breath.
    - Helps keep teeth white by preventing staining from food, drinks, and tobacco.
    - Improves overall health.
    - Makes it possible for your teeth to last a lifetime.
"""

let text3 = """
Four basic steps to caring for teeth and gums:
1.      Brushing
2.      Flossing
3.      Rinsing
4.      Eating right
5.      Visiting the dentist
"""

let text4 = """
Brush teeth and gums at least twice a day. If you can, brush 30 minutes to 1 hour after every meal. Brushing removes plaque, a film of bacteria that clings to teeth. When bacteria in plaque meet food, they produce acids. These acids lead to cavities. To brush:
Place a pea-sized dab of fluoride toothpaste on the head of the toothbrush. (Use a soft toothbrush.)
Place the toothbrush against the teeth at a 45-degree angle to the gum line.
Move the brush across the teeth using a small circular motion (if using an electric toothbrush, hold it at the same angle against the teeth and gum line and let it do the work). Continue with this motion cleaning one tooth at a time. Keep the tips of the bristles against the gum line. Avoid pressing so hard that the bristles lie flat against the teeth. (Only the tips of the toothbrush clean the teeth.) Let the bristles reach into spaces between teeth.
Brush across the top of the chewing surfaces of the back teeth. Make sure the bristles get into the grooves and crevices.
Use the same small circular motion to clean the backside of the upper and lower teeth -- the side that faces the tongue
To clean the inside of the bottom front teeth, angle the head in an up-and-down position toward the bottom inside of the mouth and move the toothbrush in a small circle.
For the inside of the top front teeth, angle the brush in an up-and-down position with the tip of the head pointing towards the roof of the mouth. Move the toothbrush in a small circle.
Give your tongue a few gentle brush strokes, brushing from the back of your tongue forward. Do not scrub. This helps remove bacteria and freshens your breath.
After brushing your teeth for two to three minutes, rinse your mouth with a mouthwash.
Replace your toothbrush with a new one every three to four months.
"""

let text5 = """
Floss your teeth at least once daily and ideally after each meal you consume. Flossing gets rid of food and plaque between the teeth, where your toothbrush cannot reach. If plaque stays between teeth, it can harden into tartar, which a dentist or hygienist must remove. To floss:
Remove about an 18-inch strip of floss from the dispenser.
Wind the floss around the middle fingers of each hand, leaving a 1-inch section open for flossing. Floss the top teeth first, then the bottom.
Place the floss in your mouth and use your index fingers to push the floss between the teeth. Be careful not to push too hard and injure the gums.
Move the floss up and down against the tooth and up and around the gum line. The floss should form a C-shape around the tooth as you floss.
Floss between each tooth as well as behind the back teeth.
Use a clean section of floss as needed and take up used floss by winding it around the fingers.
"""

let text6 = """
The third part of your daily oral care routine should be mouthwash.
Rinse daily with an antiseptic (also known as antibacterial) mouthwash to help kill bacteria that cause plaque, early gum disease and bad breath.
Fluoride-containing mouthwash helps prevent tooth decay. Some mouthwashes have both antibacterial ingredients and fluoride.
Swish the rinse around in your mouth for 30 to 60 seconds.
You can use mouthwash before or after you brush and floss.
"""

let text7 = """
For good dental health, eat a variety of foods, avoiding those that contain sugars and starches. These foods produce the most acids in the mouth, and the longer they stay in the mouth, the more they can damage the teeth. Hard "sucking candies" are especially harmful because they stay in the mouth long.
"""

let text8 = """
Snacking on sugary foods can lead to tooth decay because most people don't brush after snacks. Starchy snack foods, like potato chips, stick to the teeth. Avoid snacking on:
Candies, cookies, cakes, and pie
Sugary gum
Crackers, breadsticks, and chips
Dried fruits and raisins
"""

let text9 = """
Visit your dentist at least once every six months. To maintain healthy teeth and gums, it's important to have regular check-ups and professional cleanings. You should also see your dentist if you have pain in your teeth or mouth or bleeding, swollen gums.
You can also ask your dentist about dental sealants. Sealant is a material used to coat the top chewing surfaces of the back teeth. This coating protects the tooth from decay and usually lasts a long time.
"""

struct DentalInfoPage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Text("What is basic dental care?")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Why is basic dental care important?")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("​​Caring for Teeth/Gums")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text3)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Tips for Brushing Your Teeth and Gums")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text4)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Tips for Flossing Your Teeth")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text5)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Tips for Rinsing Your Teeth & Gums")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text6)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Eating Right and Dental Health")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text7)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Eating snacks")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text8)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
            VStack(spacing: 30) {
                Text("Dental check-ups")
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(text9)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
        }
        //.ignoresSafeArea(.container, edges: .top)
    }
 }
 
 struct DentalInfoPage_Previews: PreviewProvider {
 static var previews: some View {
 DentalInfoPage()
 }
 }
 


/*
struct DentalInfoPage: View {
    var DentalInfo: DentalInfo
    
    var body: some View {
        ScrollView {
            Image(DentalInfo.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.top)
            VStack(spacing: 30) {
                Text(DentalInfo.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(DentalInfo.description)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                }
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct DentalInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        DentalInfoPage(DentalInfo: DentalInfoList[0])
    }
}
*/
