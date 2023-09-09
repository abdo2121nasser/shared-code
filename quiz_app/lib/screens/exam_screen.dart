import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/blocks/button.dart';
import 'package:quiz_app/blocks/choosies_block.dart';
import 'package:quiz_app/blocks/question_block.dart';
import 'package:quiz_app/data_models/button_data_model.dart';
import 'package:quiz_app/data_models/question_data_model.dart';
import 'package:quiz_app/screens/openning_Screen.dart';
import 'package:quiz_app/screens/result_screen.dart';

import '../data_base/SqlDataBase.dart';

class ExamScreen extends StatefulWidget {
  int levelNumber;
List<int> answers=[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
ExamScreen({required this.levelNumber});
static  String id='exam screen';
  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {

  int questionNumber=0;
  int numberTurns=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1147),
      appBar: AppBar(
        backgroundColor: const Color(0xff1F1147),
        elevation: 0,
        centerTitle: true,
        title: Text('Level ${widget.levelNumber}',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold
              , color: Colors.greenAccent),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${questionNumber+1}/10',
          style: TextStyle(fontSize: 15.sp,color: Colors.greenAccent ),),

      QuestionBlock(text: fullQuestions[widget.levelNumber]![questionNumber].question.text,
        image:fullQuestions[widget.levelNumber]![questionNumber].question.image ,),
          Expanded(
            child: ListView.builder(
              itemExtent: 50,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: (){setState(() {
                        var chooiseColor=fullQuestions[widget.levelNumber]![questionNumber].question;
                        if(chooiseColor.answer[0].flage==false &&chooiseColor.answer[1].flage==false && chooiseColor.answer[2].flage==false && chooiseColor.answer[3].flage==false)
                          fullQuestions[widget.levelNumber]![questionNumber].question.answer[index].flage=true;
                        else
                          {
                                chooiseColor.answer[0].flage=false ;
                                chooiseColor.answer[1].flage=false;
                                chooiseColor.answer[2].flage=false;
                                chooiseColor.answer[3].flage=false;
                                fullQuestions[widget.levelNumber]![questionNumber].question.answer[index].flage=true;
                          }
                        widget.answers[questionNumber]=index;
                      });},
                      child: ChoosiesBlock(
                        text: fullQuestions[widget.levelNumber]![questionNumber].question.answer[index].answer,
                        index: index,
                        flage: fullQuestions[widget.levelNumber]![questionNumber].question.answer[index].flage ,)
                  );
                }),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(text: 'Previous',data:buttonData[2], function: () {
                if(questionNumber>=1) {questionNumber--; numberTurns--;}
                setState(() {

                });
                },),
              MyButton(text:questionNumber==9? 'Submit':'Next' ,data:buttonData[3], function: () async {

                setState(()  {

                  if(questionNumber<9) {questionNumber++;}
                numberTurns++;
                });
                if(numberTurns==10) {
                  numberTurns=0;
                  int grade=0;
                  // do the calculate grade operation
                  for(int i=0;i<10;i++)
                  {
                    if(widget.answers[i]==fullQuestions[widget.levelNumber]![i].question.indexAnswer)
                      grade++;
                  }
                  if(grade>5 && widget.levelNumber!=5)
                    {
                      var count= await SqlDataBase().readData('SELECT Count(*) FROM levels');
                      var update= await SqlDataBase().updateData("UPDATE 'levels' SET 'lock' = 'true' WHERE id = ${widget.levelNumber+1}");

                    }
                  var read= await SqlDataBase().readData('SELECT * FROM levels');
                  if(grade>int.parse(read[widget.levelNumber]['grade'])) {
                    var update = await SqlDataBase().updateData(
                        "UPDATE 'levels' SET 'grade' = $grade WHERE id = ${widget
                            .levelNumber}");
                  }

                  for(int i=0;i<10;i++)
                    {
                      fullQuestions[widget.levelNumber]![i].question.answer[0].flage=false;
                      fullQuestions[widget.levelNumber]![i].question.answer[1].flage=false;
                      fullQuestions[widget.levelNumber]![i].question.answer[2].flage=false;
                      fullQuestions[widget.levelNumber]![i].question.answer[3].flage=false;
                      widget.answers[i]=-1;
                    }
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen(grade: grade,levelNumber: widget.levelNumber)));

                }
              },)

            ],
          )
        ],
      ),

    );
  }
}
