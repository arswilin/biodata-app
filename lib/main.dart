import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}


const Color babyPink = Color(0xFFFFC1CC);
const Color hotPink = Color(0xFFFF6F9C);
const Color softPinkBg = Color(0xFFFFF0F5);
const Color deepPinkText = Color(0xFFD6336C);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bio-Data App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: softPinkBg,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: hotPink,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatefulWidget {
  const BioDataPage({super.key});

  @override
  State<BioDataPage> createState() => _BioDataPageState();
}

class _BioDataPageState extends State<BioDataPage> {
 
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController pobController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController civilStatusController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController religionController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController fatherController = TextEditingController();
  final TextEditingController motherController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

 
  final TextEditingController elemController = TextEditingController();
  final TextEditingController highSchoolController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();
  final TextEditingController courseController = TextEditingController();

 
  final TextEditingController companyController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController inclusiveDatesController = TextEditingController();

  
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController refNameController = TextEditingController();
  final TextEditingController refContactController = TextEditingController();

  String bioData = '';

  void generateBioData() {
    setState(() {
      bioData = '''
PERSONAL INFORMATION
Full Name        : ${nameController.text}
Date of Birth    : ${dobController.text}
Place of Birth   : ${pobController.text}
Age              : ${ageController.text}
Gender           : ${genderController.text}
Civil Status     : ${civilStatusController.text}
Nationality      : ${nationalityController.text}
Religion         : ${religionController.text}
Height           : ${heightController.text}
Weight           : ${weightController.text}
Father's Name    : ${fatherController.text}
Mother's Name    : ${motherController.text}
Address          : ${addressController.text}
Contact Number   : ${phoneController.text}
Email            : ${emailController.text}

EDUCATIONAL BACKGROUND
Elementary       : ${elemController.text}
High School      : ${highSchoolController.text}
College          : ${collegeController.text}
Course           : ${courseController.text}

EMPLOYMENT RECORD
Company          : ${companyController.text}
Position         : ${positionController.text}
Inclusive Dates  : ${inclusiveDatesController.text}

SKILLS
${skillsController.text}

CHARACTER REFERENCE
Name             : ${refNameController.text}
Contact Number   : ${refContactController.text}
''';
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    dobController.dispose();
    pobController.dispose();
    ageController.dispose();
    genderController.dispose();
    civilStatusController.dispose();
    nationalityController.dispose();
    religionController.dispose();
    heightController.dispose();
    weightController.dispose();
    fatherController.dispose();
    motherController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();
    elemController.dispose();
    highSchoolController.dispose();
    collegeController.dispose();
    courseController.dispose();
    companyController.dispose();
    positionController.dispose();
    inclusiveDatesController.dispose();
    skillsController.dispose();
    refNameController.dispose();
    refContactController.dispose();
    super.dispose();
  }

  Widget buildField(
    String label,
    TextEditingController controller,
    IconData icon, {
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: const TextStyle(color: deepPinkText),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: hotPink),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(icon, color: hotPink),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: babyPink, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: hotPink, width: 2),
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          const Icon(Icons.favorite, color: hotPink, size: 18),
          const SizedBox(width: 6),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: deepPinkText,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bio-Data'),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                sectionTitle('Personal Information'),
                buildField('Full Name', nameController, Icons.person),
                buildField('Date of Birth (MM/DD/YYYY)', dobController, Icons.calendar_today),
                buildField('Place of Birth', pobController, Icons.location_city),
                buildField('Age', ageController, Icons.cake, keyboardType: TextInputType.number),
                buildField('Gender', genderController, Icons.wc),
                buildField('Civil Status', civilStatusController, Icons.favorite_border),
                buildField('Nationality', nationalityController, Icons.flag),
                buildField('Religion', religionController, Icons.church),
                buildField('Height (e.g. 5\'6")', heightController, Icons.height),
                buildField('Weight (e.g. 55 kg)', weightController, Icons.monitor_weight),
                buildField("Father's Name", fatherController, Icons.man),
                buildField("Mother's Name", motherController, Icons.woman),
                buildField('Address', addressController, Icons.home, maxLines: 2),
                buildField('Contact Number', phoneController, Icons.phone, keyboardType: TextInputType.phone),
                buildField('Email', emailController, Icons.email, keyboardType: TextInputType.emailAddress),

                sectionTitle('Educational Background'),
                buildField('Elementary', elemController, Icons.school),
                buildField('High School', highSchoolController, Icons.school),
                buildField('College/University', collegeController, Icons.school),
                buildField('Course/Degree', courseController, Icons.menu_book),

                sectionTitle('Employment Record'),
                buildField('Company Name', companyController, Icons.business),
                buildField('Position', positionController, Icons.work),
                buildField('Inclusive Dates (e.g. 2022-2024)', inclusiveDatesController, Icons.date_range),

                sectionTitle('Skills'),
                buildField('Skills (e.g. MS Office, Communication)', skillsController, Icons.star, maxLines: 2),

                sectionTitle('Character Reference'),
                buildField('Reference Name', refNameController, Icons.person_outline),
                buildField('Reference Contact Number', refContactController, Icons.phone_in_talk),

                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: generateBioData,
                  icon: const Icon(Icons.favorite),
                  label: const Text('Generate Bio-Data'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: hotPink,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                if (bioData.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: babyPink, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      bioData,
                      style: const TextStyle(
                        fontSize: 15,
                        height: 1.5,
                        color: deepPinkText,
                      ),
                    ),
                  ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}