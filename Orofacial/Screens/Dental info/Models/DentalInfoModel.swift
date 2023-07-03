//
//  DentalInfoModel.swift
//  Orofacial
//
//  Created by Yoon on 2023-06-05.
//

import Foundation

struct Info: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let description: String
}
extension Info {
    static let all: [Info] = [
    Info(
        title: "What is Basic Dental Care?",
        image: "https://www.phillydentistry.com/_wp/wp-content/uploads/2020/12/dental-care-mirror.jpg",
        description: """
    Basic dental care involves brushing and flossing your teeth regularly, seeing your dentist and/or dental hygienist for regular checkups and cleanings, and eating a mouth-healthy diet, which means eating plenty of whole grain foods, vegetables and fruits, and protein foods.
"""),
    Info(title: "Why is Basic Dental Care Important?",
         image: "https://th.bing.com/th/id/R.21bf5e5472deb33bb0d6d89ec61d2784?rik=0xNEUPjVf0tbUA&pid=ImgRaw&r=0",
         description: """
    Practicing basic dental care:

    -   Prevents tooth decay

    -   Prevents gum (periodontal) disease, which can damage gum tissue and the bones that support teeth, and in the long term can lead to the loss of teeth.

    -   Shortens time with the dentist and dental hygienist, and makes the trip more pleasant.

    -   Saves money. By preventing tooth decay and gum disease, you can reduce the need for fillings and other costly procedures.

    -   Helps prevent bad breath. Brushing and flossing rid your mouth of the bacteria that cause bad breath.

    -   Helps keep teeth white by preventing staining from food, drinks, and tobacco.

    -   Improves overall health.

    -   Makes it possible for your teeth to last a lifetime.
"""),
    Info(title: "Caring for Teeth/ Gums",
         image: "https://www.southhighdental.com/wp-content/uploads/2020/06/caring-for-your-teeth.jpeg",
         description: """
    Four basic steps to caring for teeth and gums:

1.      Brushing
2.      Flossing
3.      Rinsing
4.      Eating right
5.      Visiting the dentist
"""),
    Info(title: "Tips for Brushing Your Teeth and Gums",
         image: "https://th.bing.com/th/id/R.afb018677922085ba42a31ae2e5549d2?rik=pRT5k0%2ff910xdw&pid=ImgRaw&r=0",
         description: """
    Brush teeth and gums at least twice a day. If you can, brush 30 minutes to 1 hour after every meal. Brushing removes plaque, a film of bacteria that clings to teeth. When bacteria in plaque meet food, they produce acids. These acids lead to cavities. To brush:

    -   Place a pea-sized dab of fluoride toothpaste on the head of the toothbrush. (Use a soft toothbrush.)

    -   Place the toothbrush against the teeth at a 45-degree angle to the gum line.

    -   Move the brush across the teeth using a small circular motion (if using an electric toothbrush, hold it at the same angle against the teeth and gum line and let it do the work). Continue with this motion cleaning one tooth at a time. Keep the tips of the bristles against the gum line. Avoid pressing so hard that the bristles lie flat against the teeth. (Only the tips of the toothbrush clean the teeth.) Let the bristles reach into spaces between teeth.

    -   Brush across the top of the chewing surfaces of the back teeth. Make sure the bristles get into the grooves and crevices.

    -   Use the same small circular motion to clean the backside of the upper and lower teeth -- the side that faces the tongue.

    -   To clean the inside of the bottom front teeth, angle the head in an up-and-down position toward the bottom inside of the mouth and move the toothbrush in a small circle.

    -   For the inside of the top front teeth, angle the brush in an up-and-down position with the tip of the head pointing towards the roof of the mouth. Move the toothbrush in a small circle.

    -   Give your tongue a few gentle brush strokes, brushing from the back of your tongue forward. Do not scrub. This helps remove bacteria and freshens your breath.

    -   After brushing your teeth for two to three minutes, rinse your mouth with a mouthwash.

    -   Replace your toothbrush with a new one every three to four months.
"""),
    Info(title: "Tips for Flossing your Teeth",
         image: "https://th.bing.com/th/id/R.c3103346331fc46839d77f3bd7f9770f?rik=%2fOWqElCjzKx7Xw&riu=http%3a%2f%2fwww.chattanoogadentalcare.com%2fimages%2fchattanooga%2fdental-health%2fdentalhealth_flossing.jpg&ehk=58wCdC9ViYq1wMxHQP6njqyD2hgB9qClbW%2b%2bqH2RSeo%3d&risl=&pid=ImgRaw&r=0",
         description: """
    Floss your teeth at least once daily and ideally after each meal you consume. Flossing gets rid of food and plaque between the teeth, where your toothbrush cannot reach. If plaque stays between teeth, it can harden into tartar, which a dentist or hygienist must remove. To floss:

    -   Remove about an 18-inch strip of floss from the dispenser.

    -   Wind the floss around the middle fingers of each hand, leaving a 1-inch section open for flossing. Floss the top teeth first, then the bottom.

    -   Place the floss in your mouth and use your index fingers to push the floss between the teeth. Be careful not to push too hard and injure the gums.

    -   Move the floss up and down against the tooth and up and around the gum line. The floss should form a C-shape around the tooth as you floss.

    -   Floss between each tooth as well as behind the back teeth.

    -   Use a clean section of floss as needed and take up used floss by winding it around the fingers.
"""),
    Info(title: "Tips for Rinsing Your Teeth & Gums",
         image: "https://www.rutgers.edu/sites/default/files/styles/16x9_full_default_1_5x/public/2021-03/Mouthwash.jpg?h=d8102449&itok=K0yfhv7G",
         description: """
    The third part of your daily oral care routine should be mouthwash.

    -   Rinse daily with an antiseptic (also known as antibacterial) mouthwash to help kill bacteria that cause plaque, early gum disease and bad breath.

    -   Fluoride-containing mouthwash helps prevent tooth decay. Some mouthwashes have both antibacterial ingredients and fluoride.

    -   Swish the rinse around in your mouth for 30 to 60 seconds.

    -   You can use mouthwash before or after you brush and floss.
"""),
    Info(title: "Eating Right and Dental Health",
         image: "https://dentrixdentalcare.com/wp-content/uploads/2016/08/Dental-Diet.jpg",
         description: """
    For good dental health, eat a variety of foods, avoiding those that contain sugars and starches. These foods produce the most acids in the mouth, and the longer they stay in the mouth, the more they can damage the teeth. Hard "sucking candies" are especially harmful because they stay in the mouth long.

    Snacking on sugary foods can lead to tooth decay because most people don't brush after snacks. Starchy snack foods, like potato chips, stick to the teeth. Avoid snacking on:

    -   Candies, cookies, cakes, and pie
    -   Sugary gum
    -   Crackers, breadsticks, and chips
    -   Dried fruits and raisins
"""),
    Info(title: "Dental Check-Ups",
         image: "https://palmbeachdental.com.au/wp-content/uploads/2021/03/shutterstock_364820015.jpg",
         description: """
    Visit your dentist at least once every six months. To maintain healthy teeth and gums, it's important to have regular check-ups and professional cleanings. You should also see your dentist if you have pain in your teeth or mouth or bleeding, swollen gums.

    You can also ask your dentist about dental sealants. Sealant is a material used to coat the top chewing surfaces of the back teeth. This coating protects the tooth from decay and usually lasts a long time.
"""),
    ]
}






