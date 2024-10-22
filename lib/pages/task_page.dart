import 'package:flutter/material.dart';
import 'task_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[500]!, Colors.blue[800]!],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tasks',
                style: GoogleFonts.inter(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TaskItem(
                title: 'Hobbies and Qualities',
                icon: Icons.sentiment_satisfied_alt,
                taskA:
                    'Task A. Choose the word that can replace the underlined word without changing the meaning.',
                taskAdescription: '''
1.  sharp   determined  attentive  obsessive
2.  engaged  warranted secured accredited 
3.  divergent  various expended prolonged
4.  expected  underwent appreciated  missed
5. awkwardly naturally skillfully painfully
  ''',
                taskB:
                    'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
                taskBdescription: '''
1. You can be inspired by anything, and often even by chance.  
Anything …

2. The terms are colloquially used to express the process of being mentally stimulated to do or feel something, especially to do something creative.  
They use …..

3. Finding inspiration can be a challenge for many, especially when work and a strict routine might exhaust your energies.  
Many can be ….

4. Learning something new can really stimulate your brain.  
Your brain can …

5. Inspiration is often associated with specific places.  
Specific places….

6. It is not always easy to find your inspiration at your desk or in your too-familiar apartment.  
Finding ….

7. Meeting new people often brings a new perspective that inspires you.  
A new perspective …

8. Painting, sowing, or writing a poem can clear your head, and allow you to face your actual problem with a freer mind.  
If you are to clear your head, …

9. The important thing is to start simple and not be afraid to make a mistake.  
Starting simple …

10. Sometimes you might get a sudden inspiration followed by weeks of nothing.  
A sudden inspiration …
  ''',
                taskC: 'Task C. Answer the questions',
                taskCdescription: '''
1. Why can it be difficult to find inspiration?  
2. What two tips do you find useful and why?  
3. What two tips can you add to find inspiration?
  ''',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskDetailPage(
                        title: 'Hobbies and Qualities',
                        taskA:
                            'Task A. Choose the word that can replace the underlined word without changing the meaning.',
                        taskAdescription: '''
1.  sharp   determined  attentive  obsessive
2.  engaged  warranted secured accredited 
3.  divergent  various expended prolonged
4.  expected  underwent appreciated  missed
5. awkwardly naturally skillfully painfully
          ''',
                        taskB:
                            'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
                        taskBdescription: '''
1. You can be inspired by anything, and often even by chance.  
Anything …

2. The terms are colloquially used to express the process of being mentally stimulated to do or feel something, especially to do something creative.  
They use …..

3. Finding inspiration can be a challenge for many, especially when work and a strict routine might exhaust your energies.  
Many can be ….

4. Learning something new can really stimulate your brain.  
Your brain can …

5. Inspiration is often associated with specific places.  
Specific places….

6. It is not always easy to find your inspiration at your desk or in your too-familiar apartment.  
Finding ….

7. Meeting new people often brings a new perspective that inspires you.  
A new perspective …

8. Painting, sowing, or writing a poem can clear your head, and allow you to face your actual problem with a freer mind.  
If you are to clear your head, …

9. The important thing is to start simple and not be afraid to make a mistake.  
Starting simple …

10. Sometimes you might get a sudden inspiration followed by weeks of nothing.  
A sudden inspiration …
          ''',
                        taskC: 'Task C. Answer the questions',
                        taskCdescription: '''
1. Why can it be difficult to find inspiration?  
2. What two tips do you find useful and why?  
3. What two tips can you add to find inspiration?
          ''',
                      ),
                    ),
                  );
                },
              ),
              TaskItem(
                title: 'Exercise and sport',
                icon: Icons.run_circle,
                taskA:
                    'Task A. Choose the word that can replace the underlined word without changing the meaning.',
                taskAdescription: '''
1.  aboriginal    inborn   naïve   exclusive    
2.  tiredness   boredom   stamina   duration
3.  absorbs  concerns   contains  affects
4.  natural   mental   religious  inspired
5.  obsession   perseverance   preservation   stubbornness
  ''',
                taskB:
                    'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
                taskBdescription: '''
1. Running is a sport practiced by people everywhere around the world.  
People ….

2. For the Tarahumara people, running is an especially important part of their lives and community.  
Especially important ….

3. The area that the Tarahumara live in is known as the Sierra Madre.  
The Sierra Madre is….

4. Traditionally, the Tarahumara have always valued running skills very highly.  
Running skills ….

5. In this mode of hunting, hunters chase animals down on foot.  
Animals …

6. Instead of shooting an animal with a bow and arrow, the Tarahumara hunters would chase it until it died of exhaustion.  
Before an animal died …….

7. This technique requires an incredible amount of endurance and speed.  
An incredible ….

8. The first team to run a set number of miles wins the race.  
The first team wins ….

9. The hoops are made with wood and cloth.  
They make ….

10. For the Tarahumara, showing strength by running a long distance and controlling the breath is also a spiritual act.  
Also, the Tarahumara`s spiritual act…
  ''',
                taskC: 'Task C. Answer the questions',
                taskCdescription: '''
1. Why are running skills so important for the indigenous people?  
2. What two traditions have been the Tarahumara people`s ancient ones?  
3. What two sport traditions of your country have existed from old times?
  ''',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskDetailPage(
                        title: 'Exercise and sport',
                        taskA:
                            'Task A. Choose the word that can replace the underlined word without changing the meaning.',
                        taskAdescription: '''
1.  aboriginal    inborn   naïve   exclusive    
2.  tiredness   boredom   stamina   duration
3.  absorbs  concerns   contains  affects
4.  natural   mental   religious  inspired
5.  obsession   perseverance   preservation   stubbornness
          ''',
                        taskB:
                            'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
                        taskBdescription: '''
1. Running is a sport practiced by people everywhere around the world.  
People ….

2. For the Tarahumara people, running is an especially important part of their lives and community.  
Especially important ….

3. The area that the Tarahumara live in is known as the Sierra Madre.  
The Sierra Madre is….

4. Traditionally, the Tarahumara have always valued running skills very highly.  
Running skills ….

5. In this mode of hunting, hunters chase animals down on foot.  
Animals …

6. Instead of shooting an animal with a bow and arrow, the Tarahumara hunters would chase it until it died of exhaustion.  
Before an animal died …….

7. This technique requires an incredible amount of endurance and speed.  
An incredible ….

8. The first team to run a set number of miles wins the race.  
The first team wins ….

9. The hoops are made with wood and cloth.  
They make ….

10. For the Tarahumara, showing strength by running a long distance and controlling the breath is also a spiritual act.  
Also, the Tarahumara`s spiritual act…
          ''',
                        taskC: 'Task C. Answer the questions',
                        taskCdescription: '''
1. Why are running skills so important for the indigenous people?  
2. What two traditions have been the Tarahumara people`s ancient ones?  
3. What two sport traditions of your country have existed from old times?
          ''',
                      ),
                    ),
                  );
                },
              ),
             TaskItem(
  title: 'Charities and conflict',
  icon: Icons.volunteer_activism,
  taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
  taskAdescription: '''
1. digestible   nutritious   cooking   palatable
2. praising   pricing   privileging   ordering 
3. spice   feature   shock   savour
4. strike out   drive out   knock out   take out
5. completions   achievements   competitions   containments
  ''',
  taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
  taskBdescription: '''
1. All three are successful young food professionals who started their culinary careers when they were kids.  
Young food….

2. High-level chefs are expected to produce highly memorable meals, know numerous cooking techniques, and follow special culinary rules.  
They ….

3. The first sign of Flynn McGarry’s future in food may have been when, at age three, he dressed up for Halloween as Emeril, the New Orleans cuisine personality.  
The New Orleans cuisine …

4. By the time he turned 15, he had opened a successful “supper club” in his home, charging his guests \$160 a plate!  
A successful “supper club”…

5. Haile Thomas was just 11 years old when she was chosen to bring her cooking skills to the White House and meet First Lady Michelle Obama.  
They chose…

6. Eliana de Las Casas came to her cooking career with zest when she created “Spice It Up!” —low-salt seasonings to flavor meat, fish, and vegetables.  
“Spice It Up!” - ….

7. In 2016, she was a contestant on the Food Network’s Chopped Teen Grand Champion show and won, beating out 15 other teenage chefs and taking home the top prize of \$25,000.  
Beating out….

8. Chef Eliana loves the feeling of power that comes from combining ingredients and making something delicious out of them.  
The feeling …

9. The great thing about becoming a good cook is that it doesn’t require years of training.  
Years of training …

10. As these stories prove, young people today are choosing meals for health and flavor and going on to prepare the food themselves.  
Today meals…
  ''',
  taskC: 'Task C. Answer the questions',
  taskCdescription: '''
1. What do the given stories prove regarding teenagers?  
2. What are the two similar things between the success story of Haile Thomas and Flynn McGarry?  
3. What are the two stories on the teenager success in your country can you exemplify?
  ''',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailPage(
          title: 'Charities and conflict',
          taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
          taskAdescription: '''
1. digestible   nutritious   cooking   palatable
2. praising   pricing   privileging   ordering 
3. spice   feature   shock   savour
4. strike out   drive out   knock out   take out
5. completions   achievements   competitions   containments
          ''',
          taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
          taskBdescription: '''
1. All three are successful young food professionals who started their culinary careers when they were kids.  
Young food….

2. High-level chefs are expected to produce highly memorable meals, know numerous cooking techniques, and follow special culinary rules.  
They ….

3. The first sign of Flynn McGarry’s future in food may have been when, at age three, he dressed up for Halloween as Emeril, the New Orleans cuisine personality.  
The New Orleans cuisine …

4. By the time he turned 15, he had opened a successful “supper club” in his home, charging his guests \$160 a plate!  
A successful “supper club”…

5. Haile Thomas was just 11 years old when she was chosen to bring her cooking skills to the White House and meet First Lady Michelle Obama.  
They chose…

6. Eliana de Las Casas came to her cooking career with zest when she created “Spice It Up!” —low-salt seasonings to flavor meat, fish, and vegetables.  
“Spice It Up!” - ….

7. In 2016, she was a contestant on the Food Network’s Chopped Teen Grand Champion show and won, beating out 15 other teenage chefs and taking home the top prize of \$25,000.  
Beating out….

8. Chef Eliana loves the feeling of power that comes from combining ingredients and making something delicious out of them.  
The feeling …

9. The great thing about becoming a good cook is that it doesn’t require years of training.  
Years of training …

10. As these stories prove, young people today are choosing meals for health and flavor and going on to prepare the food themselves.  
Today meals…
          ''',
          taskC: 'Task C. Answer the questions',
          taskCdescription: '''
1. What do the given stories prove regarding teenagers?  
2. What are the two similar things between the success story of Haile Thomas and Flynn McGarry?  
3. What are the two stories on the teenager success in your country can you exemplify?
          ''',
        ),
      ),
    );
  },
),
             TaskItem(
  title: 'Tradition and Language',
  icon: Icons.language,
  taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
  taskAdescription: '''
1. backslide    have a relapse   fall back   lie back
2. consign   concept   conclude   conquer 
3. modest    uneasy   uncomfortable   upset 
4. introduce  indulge   include   irritate
5. boredom   embarrassment   enjoyment   bewilderment
  ''',
  taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
  taskBdescription: '''
1. Omari piled his plate high with food, and then he and Kevon took a seat in the lively, people-filled living room, where he met more cousins, more aunties, more uncles, more cheek-pinchers.  
Omari`s plate…

2. He’d rather get lost in stories and games and books, where situations and characters were familiar.  
He`d better…

3. The rhythm of the road got to him, however, and he soon fell asleep.  
He was…

4. The sun was moving low in the sky, sending light reflecting across the surface of the water.  
When sending…

5. Omari felt a little self-conscious about singing, so he clapped along instead.  
A little self-consciousness…

6. The music started up again and Deandra pulled Omari in.  
Omari ….

7. When the three cousins went outdoors to investigate, they discovered a girl.  
A girl…

8. She was surrounded by family and moving with awesome energy.  
Family…

9. He opened to an inside page and read out loud two short poems by Langston Hughes.  
An inside page…

10. All of a sudden, the huge sound of a bass playing outside interrupted their song.  
Their song …
  ''',
  taskC: 'Task C. Answer the questions',
  taskCdescription: '''
1. Why has Omari thought that the day will turn normal?  
2. What are the two traditions does this family pass down?  
3. What are the two traditions of your nation do people in your family pass down?
  ''',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailPage(
          title: 'Tradition and Language',
          taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
          taskAdescription: '''
1. backslide    have a relapse   fall back   lie back
2. consign   concept   conclude   conquer 
3. modest    uneasy   uncomfortable   upset 
4. introduce  indulge   include   irritate
5. boredom   embarrassment   enjoyment   bewilderment
          ''',
          taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
          taskBdescription: '''
1. Omari piled his plate high with food, and then he and Kevon took a seat in the lively, people-filled living room, where he met more cousins, more aunties, more uncles, more cheek-pinchers.  
Omari`s plate…

2. He’d rather get lost in stories and games and books, where situations and characters were familiar.  
He`d better…

3. The rhythm of the road got to him, however, and he soon fell asleep.  
He was…

4. The sun was moving low in the sky, sending light reflecting across the surface of the water.  
When sending…

5. Omari felt a little self-conscious about singing, so he clapped along instead.  
A little self-consciousness…

6. The music started up again and Deandra pulled Omari in.  
Omari ….

7. When the three cousins went outdoors to investigate, they discovered a girl.  
A girl…

8. She was surrounded by family and moving with awesome energy.  
Family…

9. He opened to an inside page and read out loud two short poems by Langston Hughes.  
An inside page…

10. All of a sudden, the huge sound of a bass playing outside interrupted their song.  
Their song …
          ''',
          taskC: 'Task C. Answer the questions',
          taskCdescription: '''
1. Why has Omari thought that the day will turn normal?  
2. What are the two traditions does this family pass down?  
3. What are the two traditions of your nation do people in your family pass down?
          ''',
        ),
      ),
    );
  },
),
             TaskItem(
  title: 'Music and Film',
  icon: Icons.music_note,
  taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
  taskAdescription: '''
1. shocking  astonishing  drumming  degrading
2. flashing  shimmering  shining  glowing
3. escaped out    knocked out   broke out    went out 
4. pale  cloudy  faint  blurred
5. smoothly  easily  fluently  effortlessly
  ''',
  taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
  taskBdescription: '''
1. Ricky sits at the kitchen table, imitating the drum beat of his favorite song as he finishes his math homework.  
Sitting …

2. As they finish dinner, Grandma Johnson pulls out her old photo albums.  
Grandma ….

3. Ricky has always felt close to his grandma.  
The closeness …

4. “I snuck out with two of my cousins and went to a music festival uptown where Stevie was playing.”  
A music festival ….

5. When the day of the concert arrives, Ricky still hasn’t told any of his friends where he is going.  
Any of Ricky`s friends…

6. When Ricky was little, he would cringe when Grandma pulled out a record from her vast library and played it for him on her ancient turntable.  
He used to ….

7. Hearing and seeing these songs performed live is different from listening to the old recordings.  
To listen ….

8. He bops his head in time to the beat, feeling an even deeper connection to this music.  
An even deeper connection….

9. When Stevie and the band leave the stage for a short break, Ricky gives his grandma a big hug.  
A big hug …..

10. I recognize some of the songs - or parts of them, anyway -- from hip hop!  
Some of the songs…
  ''',
  taskC: 'Task C. Answer the questions',
  taskCdescription: '''
1. Why is Ricky so delighted after the concert of Stevie?  
2. What are the two things that embody in Stevie`s music?  
3. What are the two names of singers, musicians or musical bands that have been popular for many years and are still popular now?
  ''',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailPage(
          title: 'Music and Film',
          taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
          taskAdescription: '''
1. shocking  astonishing  drumming  degrading
2. flashing  shimmering  shining  glowing
3. escaped out    knocked out   broke out    went out 
4. pale  cloudy  faint  blurred
5. smoothly  easily  fluently  effortlessly
          ''',
          taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
          taskBdescription: '''
1. Ricky sits at the kitchen table, imitating the drum beat of his favorite song as he finishes his math homework.  
Sitting …

2. As they finish dinner, Grandma Johnson pulls out her old photo albums.  
Grandma ….

3. Ricky has always felt close to his grandma.  
The closeness …

4. “I snuck out with two of my cousins and went to a music festival uptown where Stevie was playing.”  
A music festival ….

5. When the day of the concert arrives, Ricky still hasn’t told any of his friends where he is going.  
Any of Ricky`s friends…

6. When Ricky was little, he would cringe when Grandma pulled out a record from her vast library and played it for him on her ancient turntable.  
He used to ….

7. Hearing and seeing these songs performed live is different from listening to the old recordings.  
To listen ….

8. He bops his head in time to the beat, feeling an even deeper connection to this music.  
An even deeper connection….

9. When Stevie and the band leave the stage for a short break, Ricky gives his grandma a big hug.  
A big hug …..

10. I recognize some of the songs - or parts of them, anyway -- from hip hop!  
Some of the songs…
          ''',
          taskC: 'Task C. Answer the questions',
          taskCdescription: '''
1. Why is Ricky so delighted after the concert of Stevie?  
2. What are the two things that embody in Stevie`s music?  
3. What are the two names of singers, musicians or musical bands that have been popular for many years and are still popular now?
          ''',
        ),
      ),
    );
  },
),
             TaskItem(
  title: 'Travel and Tourism',
  icon: Icons.travel_explore,
  taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
  taskAdescription: '''
1. remote     slim    small   unimportant
2. amass    accumulate   assimilate  accomplish
3. inherent   inborn  ingrained  instinctive
4. walks    goes around   sidesteps   ignores
5. evacuation   withdrawn    retirement   deviation
  ''',
  taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
  taskBdescription: '''
1. Whilst volunteer tourists can get involved in building homes or schools, they have usually paid a significant fee for the opportunity to be involved in this work.  
A significant fee…

2. However, the projects may play a role in developing people who will, in the course of their careers and lives, act ethically in favor of those less well-off.  
A role….

3. Volunteering may lead to greater international understanding.  
Greater ….

4. If volunteering is largely limited to individuals of means from wealthier areas of the world, it may give these privileged volunteers an international perspective, and a career boost.  
An international perspective…

5. Those who volunteer will contribute to reap its benefits, using host organizations and host communities as a rung on the ladder of personal advancement.  
Host organizations ….

6. International volunteering brings benefits (and costs) to individual volunteers and the organizations within which they work, at the same time as providing the space for an exchange of technical skills, knowledge, and cross-cultural experience in developing communities.  
Brings (and costs) …

7. Yet it also bypasses the democratic imperative of representative government and reduces development to individual acts of charity.  
The democratic imperative ….

8. Cynicism at the act of volunteering is certainly misplaced.  
They….

9. However, where volunteer tourism is talked up as sustainable development and the marketing of the gap-year companies merges into development thinking, this is symptomatic of a degradation of the discourse of development.  
However, where they …

10. The politics of volunteer tourism represents a retreat from a social understanding of global inequalities and the poverty lived by so many in the developing world.  
A retreat…
  ''',
  taskC: 'Task C. Answer the questions',
  taskCdescription: '''
1. Why does the volunteering have degradation from a discourse of development?  
2. What are the two issues of negative usage of volunteering mentioned in the text?  
3. What are the two solutions to the problems mentioned above you can offer?
  ''',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailPage(
          title: 'Travel and Tourism',
          taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
          taskAdescription: '''
1. remote     slim    small   unimportant
2. amass    accumulate   assimilate  accomplish
3. inherent   inborn  ingrained  instinctive
4. walks    goes around   sidesteps   ignores
5. evacuation   withdrawn    retirement   deviation
          ''',
          taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
          taskBdescription: '''
1. Whilst volunteer tourists can get involved in building homes or schools, they have usually paid a significant fee for the opportunity to be involved in this work.  
A significant fee…

2. However, the projects may play a role in developing people who will, in the course of their careers and lives, act ethically in favor of those less well-off.  
A role….

3. Volunteering may lead to greater international understanding.  
Greater ….

4. If volunteering is largely limited to individuals of means from wealthier areas of the world, it may give these privileged volunteers an international perspective, and a career boost.  
An international perspective…

5. Those who volunteer will contribute to reap its benefits, using host organizations and host communities as a rung on the ladder of personal advancement.  
Host organizations ….

6. International volunteering brings benefits (and costs) to individual volunteers and the organizations within which they work, at the same time as providing the space for an exchange of technical skills, knowledge, and cross-cultural experience in developing communities.  
Brings (and costs) …

7. Yet it also bypasses the democratic imperative of representative government and reduces development to individual acts of charity.  
The democratic imperative ….

8. Cynicism at the act of volunteering is certainly misplaced.  
They….

9. However, where volunteer tourism is talked up as sustainable development and the marketing of the gap-year companies merges into development thinking, this is symptomatic of a degradation of the discourse of development.  
However, where they …

10. The politics of volunteer tourism represents a retreat from a social understanding of global inequalities and the poverty lived by so many in the developing world.  
A retreat…
          ''',
          taskC: 'Task C. Answer the questions',
          taskCdescription: '''
1. Why does the volunteering have degradation from a discourse of development?  
2. What are the two issues of negative usage of volunteering mentioned in the text?  
3. What are the two solutions to the problems mentioned above you can offer?
          ''',
        ),
      ),
    );
  },
),
             TaskItem(
  title: 'Science and Technology',
  icon: Icons.science,
  taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
  taskAdescription: '''
1. beak    nose  spout  snoot 
2. insubstantial    weak    thin  delicate 
3. accommodated   converted    designed   individualized
4. included    embedded  injected  planted
5. making   losing    earning  profiting
  ''',
  taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
  taskBdescription: '''
1. 3D printers are transforming the way people build, make, and acquire things.  
The way …

2. Today, people are using this technology to print a remarkable array of things—something unthinkable just a few years ago.  
Just a few years ago …

3. It uses a gigantic 3D printer to build small homes by squirting layers of concrete to build floors and walls.  
To build …

4. The group has built its first neighborhood of 3D printed houses in southern Mexico, which will cost their new owners less than \$20 a month for seven years. 
Its first …

5. In another startling example of how far this technology has come, 3D printers have been used to create medical devices like hearing aids, surgical implants, or even replacement limbs.  
They have….

6. A Florida company has found a way to produce bionic arms for children that can be customized with superhero designs.  
A way ..

7. These replacement arms use sensors to generate arm and hand movements that enable children to perform everyday tasks like getting dressed.  
To generate ..

8. Companies are exploring the use of plant-based materials to create vegan steaks and burgers.  
The use ..

9. A bakery in Ohio takes orders for 3D printed cakes and cookies.  
Orders ..

10. Architects are using 3D printers to create small-scale models of homes or furniture that make it easier to imagine what a finished building might look like.  
To make …
  ''',
  taskC: 'Task C. Answer the questions',
  taskCdescription: '''
1. Why is the revolution of 3D printers so important nowadays?  
2. What are the two life areas that can be “printed” mentioned in the text?  
3. What are the two most valuable things that can be printed in your country and why?
  ''',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskDetailPage(
          title: 'Science and Technology',
          taskA: 'Task A. Choose the word that can replace the underlined word without changing the meaning.',
          taskAdescription: '''
1. beak    nose  spout  snoot 
2. insubstantial    weak    thin  delicate 
3. accommodated   converted    designed   individualized
4. included    embedded  injected  planted
5. making   losing    earning  profiting
          ''',
          taskB: 'Task B. Complete the second sentence so that it has similar meaning to the first one. Do not change the word given.',
          taskBdescription: '''
1. 3D printers are transforming the way people build, make, and acquire things.  
The way …

2. Today, people are using this technology to print a remarkable array of things—something unthinkable just a few years ago.  
Just a few years ago …

3. It uses a gigantic 3D printer to build small homes by squirting layers of concrete to build floors and walls.  
To build …

4. The group has built its first neighborhood of 3D printed houses in southern Mexico, which will cost their new owners less than \$20 a month for seven years.  
Its first …

5. In another startling example of how far this technology has come, 3D printers have been used to create medical devices like hearing aids, surgical implants, or even replacement limbs.  
They have….

6. A Florida company has found a way to produce bionic arms for children that can be customized with superhero designs.  
A way ..

7. These replacement arms use sensors to generate arm and hand movements that enable children to perform everyday tasks like getting dressed.  
To generate ..

8. Companies are exploring the use of plant-based materials to create vegan steaks and burgers.  
The use ..

9. A bakery in Ohio takes orders for 3D printed cakes and cookies.  
Orders ..

10. Architects are using 3D printers to create small-scale models of homes or furniture that make it easier to imagine what a finished building might look like.  
To make …
          ''',
          taskC: 'Task C. Answer the questions',
          taskCdescription: '''
1. Why is the revolution of 3D printers so important nowadays?  
2. What are the two life areas that can be “printed” mentioned in the text?  
3. What are the two most valuable things that can be printed in your country and why?
          ''',
        ),
      ),
    );
  },
),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String taskA;
  final String taskB;
  final String taskC;
  final String taskAdescription;
  final String taskBdescription;
  final String taskCdescription;
  final VoidCallback? onTap;
  

  const TaskItem({
    super.key,
    required this.title,
    required this.icon,
    required this.taskA,
    required this.taskB,
    required this.taskC,
    required this.taskAdescription,
    required this.taskBdescription,
    required this.taskCdescription,
     this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue[500],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
