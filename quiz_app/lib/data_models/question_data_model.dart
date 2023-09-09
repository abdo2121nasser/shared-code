class Answers
{
  String answer;
  bool flage;

  Answers({required this.answer,required this.flage});
}


class QuestionArguments {
  String text, image;
  int indexAnswer;
  List<Answers> answer;

  QuestionArguments(
      {required this.text,
      required this.image,
      required this.answer,
      required this.indexAnswer});
}

class FullQuestion {
  QuestionArguments question;
  FullQuestion({required this.question});
}

Map<int, List<FullQuestion>> fullQuestions = {
  1:[
    FullQuestion(
        question: QuestionArguments(
            text: 'The world as a whole spends nearly (.....) of its \$40.7 trillion gross product on projects of all kinds.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: '\$10 trillion', flage: false) ,
              Answers(answer: '\$17 trillion', flage: false),
              Answers(answer:  '\$14 trillion', flage: false),
              Answers(answer:  '\$15 trillion', flage: false)
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'More than (.....) people regard project management as their (.....).',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  '\$12 million, Profession.', flage: false) ,
              Answers(answer:  '\$16 million, Profession.', flage: false) ,
              Answers(answer:  '\$16 million, Hobby.', flage: false) ,
              Answers(answer:  '\$12 million, Hobby.', flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: 'The overall information and communications technology market grew by (.....) percent to almost \$3 trillion in (.....).',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Nine, 2001.', flage: false) ,
              Answers(answer:  'Seven, 2010.', flage: false) ,
              Answers(answer:  'two, 2010.', flage: false) ,
              Answers(answer:  'Six, 2010.' ,flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: 'A temporary group of activities undertaken to accomplish a unique product or service.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Project', flage: false) ,
              Answers(answer:  'Managment', flage: false) ,
              Answers(answer:  'Project team', flage: false) ,
              Answers(answer:  'leader Ship' ,flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'How many Attributes of the Project?',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Three', flage: false) ,
              Answers(answer:  'Four', flage: false) ,
              Answers(answer:  'Five', flage: false) ,
              Answers(answer:  'Six', flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Single Unit, in Projects Attributes, Relatively (.....) frequency.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'High', flage: false) ,
              Answers(answer: 'Low', flage: false) ,
              Answers(answer: 'Avarage', flage: false) ,
              Answers(answer: 'very high' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "Single Unit, in Project's Attributes, Defined (.....) as a unique product or service.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'None', flage: false) ,
              Answers(answer:   'Income', flage: false) ,
              Answers(answer:   'High', flage: false) ,
              Answers(answer:   'Outcome' ,flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: "Temporary, in Project's Attributes, Defined (.....).",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Starting Point', flage: false) ,
              Answers(answer:  'Ending point', flage: false) ,
              Answers(answer:  'Both 1 and 2', flage: false) ,
              Answers(answer:  'none of them', flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: "Resources, in Project's Attributes, Require Resources, often from (.....) areas.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Various', flage: false) ,
              Answers(answer:   'Fixed', flage: false) ,
              Answers(answer:   'Both 1 and 2', flage: false) ,
              Answers(answer:   'Rich' ,flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: "Sponsor, in Project's Attributes, Should have a (.....) Sponsor and/or Customer.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'None', flage: false) ,
              Answers(answer:   'Primary', flage: false) ,
              Answers(answer:   'Secoundary', flage: false) ,
              Answers(answer:   'Both 1 and 2', flage: false) ,
            ],
            indexAnswer: 1)),
  ],
  2:[
    FullQuestion(
        question: QuestionArguments(
            text: 'States customer requirements or problem.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Project Breif', flage: false) ,
              Answers(answer: 'Project Problem', flage: false),
              Answers(answer:  'Project Needs', flage: false),
              Answers(answer:  'Project Quality', flage: false)
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Objective (scope), Budget (cost), Schedule (time):',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Roudmap', flage: false) ,
              Answers(answer:  'Constraints', flage: false) ,
              Answers(answer:  'Both 1 and 2', flage: false) ,
              Answers(answer:  'none of them', flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Solution that satisfies the customer (performance).',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Deliverable', flage: false) ,
              Answers(answer:  'Changable', flage: false) ,
              Answers(answer:  'Negotiable', flage: false) ,
              Answers(answer:  'none of them' ,flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Projects are (.....) happened in one time.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  '2003', flage: false) ,
              Answers(answer:  '2001', flage: false) ,
              Answers(answer:  'None', flage: false) ,
              Answers(answer:  'Not' ,flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Projects have (.....) and endings.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Beginnings', flage: false) ,
              Answers(answer:  'Middle period', flage: false) ,
              Answers(answer:  'Both 1 and 2', flage: false) ,
              Answers(answer:  'None of them', flage: false) ,
            ],
            indexAnswer:2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'The series of phases a project passes through from its start to its completion.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Life Cycle', flage: false) ,
              Answers(answer: 'Project Cycle', flage: false) ,
              Answers(answer: 'Needs Cycle', flage: false) ,
              Answers(answer: 'all of them' ,flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: "Project Life Cycle has (.....) Phases.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'three', flage: false) ,
              Answers(answer:   'two', flage: false) ,
              Answers(answer:   'five', flage: false) ,
              Answers(answer:   'four' ,flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: "First element of Project Life Cycle is:",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Excuting', flage: false) ,
              Answers(answer:  'Controlling', flage: false) ,
              Answers(answer:  'planning', flage: false) ,
              Answers(answer:  'Intiating', flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: "This is where you figure out what is the project, deciding what you’re going to do or build to fulfill the project’s needs.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Planning', flage: false) ,
              Answers(answer:   'Initiating', flage: false) ,
              Answers(answer:   'Controling', flage: false) ,
              Answers(answer:   'Excuting' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "Benefits of Q8, Q9 Answers are:",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Feasibility study/analysis.', flage: false) ,
              Answers(answer:   'Identify key stakeholders.', flage: false) ,
              Answers(answer:   'SDevelop a project charter.', flage: false) ,
              Answers(answer:   'all of them', flage: false) ,
            ],
            indexAnswer: 3)),
  ],
  3:[
    FullQuestion(
        question: QuestionArguments(
            text: 'Document that offers a formal initiation definition of the project.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Project Charter.', flage: false) ,
              Answers(answer: 'Project Manuscript.', flage: false),
              Answers(answer:  'Microsoft Project.', flage: false),
              Answers(answer:  'all of them', flage: false)
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Key tools and techniques for developing a project charter are:',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Stakeholder Interviews.', flage: false) ,
              Answers(answer:  'Team Brainstorming.', flage: false) ,
              Answers(answer:  'Both 1 and 2', flage: false) ,
              Answers(answer:  'none of them', flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'The (.....) goal of a project charter is to define the project purpose, key objectives and expected benefits.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Main', flage: false) ,
              Answers(answer:  'Second', flage: false) ,
              Answers(answer:  'Current', flage: false) ,
              Answers(answer:  'none of them' ,flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Knowing these factors leads to better resource allocation during the (.....) stages and smoother planning.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Bigger', flage: false) ,
              Answers(answer:  'Current', flage: false) ,
              Answers(answer:  'Next', flage: false) ,
              Answers(answer:  'None of them', flage: false) ,
            ],
            indexAnswer:2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Identify all key stakeholders, Generate and evaluate alternative solutions, Summary milestone schedule, in (.....) Phase.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'layout', flage: false) ,
              Answers(answer:  'both 1 and 2', flage: false) ,
              Answers(answer:  'Design', flage: false) ,
              Answers(answer:  'Concept.' ,flage: false) ,
            ],
            indexAnswer: 3)),

    FullQuestion(
        question: QuestionArguments(
            text: 'Very important stage, since the project may fail if your planning is wrong or misses some parts.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Initiating.', flage: false) ,
              Answers(answer: 'Planning.', flage: false) ,
              Answers(answer: 'Execution.', flage: false) ,
              Answers(answer: 'all of them' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "In Planning stage you plan (.....)( )thing(s).",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Some.', flage: false) ,
              Answers(answer:   'Most.', flage: false) ,
              Answers(answer:   'Every.', flage: false) ,
              Answers(answer:   'Few' ,flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: "Planning defines how a project will be executed, monitored, (.....).",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Controlled.', flage: false) ,
              Answers(answer:  'Closed.', flage: false) ,
              Answers(answer:  'planning', flage: false) ,
              Answers(answer:  'Both 1 and 2.', flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: "Basically, Planning is covering (.....) the consequent stages of a project.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Some.', flage: false) ,
              Answers(answer:   'All.', flage: false) ,
              Answers(answer:   'Most.', flage: false) ,
              Answers(answer:   'Few' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "Your project management plan can be (.....).",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Summary Level.', flage: false) ,
              Answers(answer:   'Highly Detailed.', flage: false) ,
              Answers(answer:   'none of them.', flage: false) ,
              Answers(answer:   'all of them', flage: false) ,
            ],
            indexAnswer: 3)),
  ],
  4:[
    FullQuestion(
        question: QuestionArguments(
            text: 'Planning is concerned in:',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Scope and Requirements.', flage: false) ,
              Answers(answer: 'Stakeholders.', flage: false),
              Answers(answer:  'leader', flage: false),
              Answers(answer:  'both 1 and 2', flage: false)
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Where the work is done according to project management plan to meet the project objectives.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Executing.', flage: false) ,
              Answers(answer:  'Closing.', flage: false) ,
              Answers(answer:  'Starting.', flage: false) ,
              Answers(answer:  'planning', flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Implementation phase, Contract (.....) - each task of implementation phase WBS (Work Breakdown Structure).',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Out.', flage: false) ,
              Answers(answer:  'In', flage: false) ,
              Answers(answer:  'both 1 and 2', flage: false) ,
              Answers(answer:  'none of them' ,flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Implementation phase, (.....) project performance.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Monitor.', flage: false) ,
              Answers(answer:  'Control.', flage: false) ,
              Answers(answer:  'None of them', flage: false) ,
              Answers(answer:  'Both A and B.' ,flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: 'PImplementation phase, Launch corrective action whenever (.....).',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'You Wanted.', flage: false) ,
              Answers(answer:  'You get Bored(lol).', flage: false) ,
              Answers(answer:  'its Needed.', flage: false) ,
              Answers(answer:  'None of them', flage: false) ,
            ],
            indexAnswer:2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'You will want to adopt one of the project management tools to help you (.....) manage and review all the scheduled activities.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Proactively.', flage: false) ,
              Answers(answer: 'Reactively.', flage: false) ,
              Answers(answer: 'Randomly.', flage: false) ,
              Answers(answer: 'all of them' ,flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: "A project management tool that takes a step-by-step approach to complete large projects with several moving pieces.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Work Leading Structure (WLS).', flage: false) ,
              Answers(answer:   'Work Breakdown Structure (WBS).', flage: false) ,
              Answers(answer:   'Work Problem Structure (WPS).', flage: false) ,
              Answers(answer:   'none of them' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "By breaking down the project into (.....) components, a WBS can integrate scope, cost and deliverables into a (.....) tool(s).",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Bigger, Single.', flage: false) ,
              Answers(answer:  'Smaller, Multi.', flage: false) ,
              Answers(answer:  'Smaller, Multi', flage: false) ,
              Answers(answer:  'Smaller, Single.', flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: "First Step in Implementation Phase:",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Assign Resources.', flage: false) ,
              Answers(answer:   'Assemble a Team.', flage: false) ,
              Answers(answer:   'CSchedule status meetings.', flage: false) ,
              Answers(answer:   'all of them' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "Project management assumes the use of (.....) techniques and tools to move the project from ground zero to successful completion.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Same.', flage: false) ,
              Answers(answer:   'Different.', flage: false) ,
              Answers(answer:   'None of them.', flage: false) ,
              Answers(answer:   'All of them', flage: false) ,
            ],
            indexAnswer: 3)),
  ],
  5:[
    FullQuestion(
        question: QuestionArguments(
            text: 'There are (.....) popular Project Management Methodologies in Software Development.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Two.', flage: false) ,
              Answers(answer: 'Three', flage: false),
              Answers(answer:  'Four', flage: false),
              Answers(answer:  'Five', flage: false)
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: 'The plan-driven approach, which assumes using rigid plans and linear execution of the outlined tasks during each key stage.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Agile Project Management.', flage: false) ,
              Answers(answer:  'All of them', flage: false) ,
              Answers(answer:  'AbdoHabeeb.', flage: false) ,
              Answers(answer:  'Waterfall Project Management.', flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Interactive approach to planning and executing project processes.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'AbdoHabeeb.', flage: false) ,
              Answers(answer:  'Waterfall Project Management.', flage: false) ,
              Answers(answer:  'Agile Project Management.', flage: false) ,
              Answers(answer:  'none of them' ,flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'In Agile Project Management, The main outcome is broken down into (.....) sections (iterations) that remain open to changes.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Modorate', flage: false) ,
              Answers(answer:  'Bigger', flage: false) ,
              Answers(answer:  'Smaller', flage: false) ,
              Answers(answer:  'none of them' ,flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'Where the work performance is measured.',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Controlling.', flage: false) ,
              Answers(answer:  'Monitoring.', flage: false) ,
              Answers(answer:  'Both 1 and 2', flage: false) ,
              Answers(answer:  'None of them', flage: false) ,
            ],
            indexAnswer:2)),
    FullQuestion(
        question: QuestionArguments(
            text: 'There could be some changes required to adjust the project deliverables, these changes approved from stakeholders and may affect (.....).',
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer: 'Executing.', flage: false) ,
              Answers(answer: 'Planning.', flage: false) ,
              Answers(answer: 'Initaling', flage: false) ,
              Answers(answer: 'both 1 and 2' ,flage: false) ,
            ],
            indexAnswer: 3)),
    FullQuestion(
        question: QuestionArguments(
            text: "To ensure that your project remains on track at all times, you will want to establish (.....).",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Key Strategic Indicators.', flage: false) ,
              Answers(answer:   'Key Performance Indicators.', flage: false) ,
              Answers(answer:   'both 1 and 2', flage: false) ,
              Answers(answer:   'none of them' ,flage: false) ,
            ],
            indexAnswer: 1)),
    FullQuestion(
        question: QuestionArguments(
            text: "(.....) managers tend to settle for (.....) metrics that clearly indicate the project overall health.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:  'Most, 3-5', flage: false) ,
              Answers(answer:  'Some, 3-5', flage: false) ,
              Answers(answer:  'Most, 1-5', flage: false) ,
              Answers(answer:  'Some, 1-5', flage: false) ,
            ],
            indexAnswer: 0)),
    FullQuestion(
        question: QuestionArguments(
            text: "Some steps should be taken when the project is completed, such as releasing the project’s resources and documentation required to be archived in the organization to be used as reference for similar projects.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Planning', flage: false) ,
              Answers(answer:   'Initiating', flage: false) ,
              Answers(answer:   'Closing', flage: false) ,
              Answers(answer:   'Excuting' ,flage: false) ,
            ],
            indexAnswer: 2)),
    FullQuestion(
        question: QuestionArguments(
            text: "Performance, Budgets, Timelines, Scope, Those are four of (.....) metrics that clearly indicate the project overall health.",
            image: 'lib/assets/purpel.jpg',
            answer: [
              Answers(answer:   'Three', flage: false) ,
              Answers(answer:   'Four', flage: false) ,
              Answers(answer:   'Five', flage: false) ,
              Answers(answer:   'Six', flage: false) ,
            ],
            indexAnswer: 3)),
  ],
};
