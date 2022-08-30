class Dummy_Data {
  final Map _yazanInformation = {
    "Full Name": "Yazan Fakhri Mohammed Alradaideh",
    "Education": {
      "Univesity": "Yarmouk Universiy",
      "Facility": "Hijjawi",
      "Major": "Computer Engineer",
      "School": "Dar Al Aolom",
    },
    "Assignment":
        "Go and create a new application , that has a container and inside this container there is a child which is a card also there is a child for that card which is a text. and submit the URL of your repository.",
  };

  final List<String> _qoutes =[
    "Happy Birthday To Abdelraheem",
    "“Any fool can write code that a computer can understand. Good programmers write code that humans can understand.” – Martin Fowler",
    "“First, solve the problem. Then, write the code.” – John Johnson",
    "“Experience is the name everyone gives to their mistakes.” – Oscar Wilde",
    "“ In order to be irreplaceable, one must always be different” – Coco Chanel",
    "“Knowledge is power.” – Francis Bacon",
    
    "“Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday’s code.” – Dan Salomon",
    "“Perfection is achieved not when there is nothing more to add, but rather when there is nothing more to take away.” – Antoine de Saint-Exupery",
    "“Fix the cause, not the symptom.” – Steve Maguire",
    "“ Code is like humor. When you have to explain it, it’s bad.” – Cory House",
    "“Optimism is an occupational hazard of programming: feedback is the treatment. “ Kent Beck",
  ];

  Map get YazanInfo{
    return _yazanInformation;
  }
  
  List<String> get Qoutes{
    return _qoutes;
  }
}