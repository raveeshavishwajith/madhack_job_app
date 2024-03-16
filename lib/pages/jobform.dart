import 'package:flutter/material.dart';
import 'package:madhack_job_app/components/jobformFields.dart';

enum JobType { Remote, Onsite, Hybrid }

enum JobMode { mode1, mode2 }

class Jobform extends StatefulWidget {
  const Jobform({super.key});

  @override
  State<Jobform> createState() => _JobformState();
}

class _JobformState extends State<Jobform> {
  final jobTitleController = TextEditingController();

  final jobDescriptionController = TextEditingController();

  final jobResponsibilitiesController = TextEditingController();

  final jobRequirmentController = TextEditingController();

  final salaryController = TextEditingController();

  final locationController = TextEditingController();

  JobType selectedJobType = JobType.Remote;
  JobMode selectedJobMode = JobMode.mode1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.cancel,
                    color: Color(0xFF095B66),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Text(
                'New Job',
                style: TextStyle(
                    color: Color(0xFF095B66),
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    fontFamily: 'Poppins'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Jobfields(
              controller: jobTitleController,
              hinttext: 'Job Title',
              obscuretext: false,
              height: 50,
              width: 350,
              right: 20,
              left: 20,
            ),
            Jobfields(
              controller: jobDescriptionController,
              hinttext: 'Job Description',
              obscuretext: false,
              height: 100,
              width: 350,
              right: 20,
              left: 20,
            ),
            Jobfields(
              controller: jobResponsibilitiesController,
              hinttext: 'Key Responsibilities',
              obscuretext: false,
              height: 100,
              width: 350,
              right: 20,
              left: 20,
            ),
            Jobfields(
              controller: jobRequirmentController,
              hinttext: 'Requirments',
              obscuretext: false,
              height: 100,
              width: 350,
              right: 20,
              left: 20,
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 8.0, top: 5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF095B66),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: DropdownMenu(
                width: 350,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF095B66),
                ),
                label: const Text(
                  'Job Type',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF095B66),
                  ),
                ),
                enableSearch: true,
                onSelected: (jobtype) {
                  if (jobtype != null) {
                    setState(() {
                      selectedJobType = jobtype;
                    });
                  }
                },
                dropdownMenuEntries: <DropdownMenuEntry<JobType>>[
                  DropdownMenuEntry(value: JobType.Remote, label: 'Remote'),
                  DropdownMenuEntry(value: JobType.Onsite, label: 'Onsite'),
                  DropdownMenuEntry(value: JobType.Hybrid, label: 'Hybrid'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 8.0, top: 5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF095B66),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: DropdownMenu(
                width: 350,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF095B66),
                ),
                label: const Text(
                  'Job Mode',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF095B66),
                  ),
                ),
                enableSearch: true,
                onSelected: (jobmode) {
                  if (jobmode != null) {
                    setState(() {
                      selectedJobMode = jobmode;
                    });
                  }
                },
                dropdownMenuEntries: <DropdownMenuEntry<JobMode>>[
                  DropdownMenuEntry(value: JobMode.mode1, label: 'mode1'),
                  DropdownMenuEntry(value: JobMode.mode2, label: 'mode2'),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Jobfields(
                    controller: salaryController,
                    hinttext: "Salary",
                    obscuretext: false,
                    height: 50,
                    width: 165,
                    right: 2,
                    left: 20,
                  ),
                  Jobfields(
                    controller: locationController,
                    hinttext: "Location",
                    obscuretext: false,
                    height: 50,
                    width: 165,
                    right: 20,
                    left: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20, bottom: 8.0, top: 5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF095B66), // Text color
                    padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        right: 155,
                        left: 155), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0), // Button border radius
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
