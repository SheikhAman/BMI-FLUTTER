import 'package:bmi_calculate/pages/view_detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weightValue = 50;
  double heightValue = 1.2;
  double bmiResult = 0;
  String bmiTxt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7858A6),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xffF806CC),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            children: [
              Card(
                color: Color(0xff2E0249),
                elevation: 5,
                child: Column(
                  children: [
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      '${weightValue.round()} Kg',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Slider(
                        value: weightValue,
                        activeColor: Colors.purple,
                        inactiveColor: Colors.blueGrey,
                        label: '${weightValue.round()}',
                        onChanged: (changedValue) {
                          setState(() {
                            weightValue = changedValue;
                            print(weightValue);
                            result();
                            bmiShowTxt();
                          });
                        },
                        min: 15,
                        max: 120,
                        divisions: 120,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Color(0xff2E0249),
                elevation: 5,
                child: Column(
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      '${heightValue.toStringAsFixed(2)} m',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Slider(
                        value: heightValue,
                        activeColor: Colors.purple,
                        inactiveColor: Colors.blueGrey,
                        min: 1.2,
                        max: 2.5,
                        divisions: 200,
                        label: '${heightValue.toStringAsFixed(2)}',
                        onChanged: (changedHeightValue) {
                          setState(() {
                            heightValue = changedHeightValue;
                            result();
                            bmiShowTxt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundColor: Color(0xff5B4B8A),
                child: Text(
                  "${bmiResult.toStringAsFixed(2)}",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
                radius: 50,
              ),
              Text(
                '$bmiTxt',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(ViewDetail.routeName, arguments: bmiTxt);
                },
                style: ElevatedButton.styleFrom(primary: Color(0xffA91079)),
                child: Text(
                  'View Detail',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void result() {
    bmiResult = weightValue / (heightValue * heightValue);
  }

  void bmiShowTxt() {
    if (bmiResult < 16) {
      bmiTxt = 'Severe Thinness';
    } else if (bmiResult >= 16 && bmiResult < 17) {
      bmiTxt = 'Moderate Thinness';
    } else if (bmiResult >= 17 && bmiResult < 18.5) {
      bmiTxt = 'Mild Thinness';
    } else if (bmiResult >= 18.5 && bmiResult < 25) {
      bmiTxt = 'Normal';
    } else if (bmiResult >= 25 && bmiResult < 30) {
      bmiTxt = 'Overweight';
    } else if (bmiResult >= 30 && bmiResult < 34.9) {
      bmiTxt = 'Obese Class 1';
    } else if (bmiResult >= 35 && bmiResult < 39.9) {
      bmiTxt = 'Obese Class 2';
    } else {
      bmiTxt = 'Obese Class 3';
    }
  }
}
