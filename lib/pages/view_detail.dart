import 'package:flutter/material.dart';

class ViewDetail extends StatefulWidget {
  static String routeName = '/viewDetail';

  ViewDetail({Key? key}) : super(key: key);

  @override
  State<ViewDetail> createState() => _ViewDetailState();
}

class _ViewDetailState extends State<ViewDetail> {
  String bmiResult = '';
  String docAdTitle = '';
  String docAdvice = '';
  List<String> bmiCat = [
    'Severe Thinness',
    'Moderate Thinness',
    'Mild Thinness',
    'Normal',
    'Overweight',
    'Obese Class 1',
    'Obese Class 2',
    'Obese Class 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text('View Details'),
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        titleSpacing: 1,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BMI',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Severe Thinness'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[0],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'BMI < 16',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Moderate Thinness'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[1],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '16 - 16.9',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Mild Thinness'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[2],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '17 - 18.4',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Normal' ? Colors.red : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[3],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '18.5 - 24.9',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Overweight'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[4],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '25 - 29.9',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Obese Class 1'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[5],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '30 - 34.9',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Obese Class 2'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[6],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '35 - 40',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: bmiResult == 'Obese Class 3'
                    ? Colors.red
                    : Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bmiCat[7],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'BMI > 40',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    docAdTitle,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    docAdvice,
                    style: TextStyle(
                        fontSize: 13,
                        backgroundColor: Colors.black54,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void docMethod() {
    if (bmiResult == bmiCat[0] ||
        bmiResult == bmiCat[1] ||
        bmiResult == bmiCat[2]) {
      docAdTitle = 'Underweight';
      docAdvice = '''You are underweight, you need to put on some
weight. You are recommended to ask your doctor
or a dietitian for advice.''';
    } else if (bmiResult == bmiCat[3]) {
      docAdTitle = 'Normal or Healthy Weight';
      docAdvice = '''You are at a healthy weight for your height. By
maintaining a healthy weight, you lower your risk
of developing serious health problems.

''';
    } else if (bmiResult == bmiCat[4]) {
      docAdTitle = 'Overweight';
      docAdvice = '''You are slightly overweight. You may be advised to
lose some weight for health reasons. You are 
recommended to talk to your doctor or a dietitian for
advice.''';
    } else {
      docAdTitle = 'Obese';
      docAdvice = '''You are heavily overweight. Your health may be at
risk if you do not lose weight. You are recommended
to talk to your doctor or a dietitian for advice.''';
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    bmiResult = ModalRoute.of(context)?.settings.arguments as String;
    docMethod();
    super.didChangeDependencies();
  }
}
