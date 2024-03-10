import 'dart:io';

main() {
  var listStudents = {};

  void addStudant(Map studant) {
    listStudents.addAll(studant);
  }
  /* end addStudants **********/

  void getName(String searchName) {
    var count = 0;
    listStudents.forEach((key, value) {
      value.forEach((key, value) {
        if (value.toString().toLowerCase() == searchName.toLowerCase()) {
          print('Nome cadastrado : $value');
          count++;
        }
      });
    });
    if (count == 0) {
      print('Nome não cadastrado');
    }
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  /* end getName **********/

  void getRecordStudant(String recordStudant) {
    var count = 0;
    listStudents.forEach((key, value) {
      if (key.toLowerCase() == recordStudant.toLowerCase()) {
        print('$key : $value');
        count++;
      }
    });
    if (count == 0) {
      print('Matricula incorreta ou inexistente!');
    }
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  /* end getRecordStudant **********/

  void removeRecordStudent(String record) {
    if (listStudents.keys.contains(record.toLowerCase())) {
      listStudents.remove(record.toLowerCase());
      print('Matricula removida com sucesso!');
    } else {
      print('Matricula não cadastrada!');
    }
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  /* end removeRecordStudent **********/

  void getAllStudent() {
    listStudents.forEach((key, value) {
      print('$key : $value');
    });
    if (listStudents.isEmpty) {
      print('Lista de alunos vazia');
    }
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  /* end getAllStudants **********/

  void getIraAproved() {
    listStudents.forEach((key, value) {
      value.forEach((key, value) {
        if (key == 'ira') {
          if (double.parse(value.toString()) >= 6) {
            print('$key : $value');
          }
        }
      });
    });
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  /* end getIraAproved **********/

  void removeAllStudants() {
    listStudents.clear();
  }
  /* end removeAllStudants **********/

  String inputReadUser() {
    print('Digite: ');
    String? input = stdin.readLineSync().toString();
    return input;
  }

  void prepareInputDadosNewStudant(List dadosNewStudants) {
    var courseDesciption = new Map();
    courseDesciption['nome'] = 'Web Desing';
    courseDesciption['campus'] = 'Boituva';

    var studant = new Map<String, Object>();
    studant['nome'] = dadosNewStudants[1];
    studant['ira'] = double.parse(dadosNewStudants[2]);
    studant['anoEntrada'] = int.parse(dadosNewStudants[3]);
    studant['curso'] = courseDesciption;

    var record = new Map<String, Map>();
    record[dadosNewStudants[0]] = studant;

    print(record);
    addStudant(record);
  }

  List dadosNewStudent() {
    List dadosNewStudent = [];
    dadosNewStudent.clear;

    print("Qual a matricula do estudante? ");
    dadosNewStudent.add(inputReadUser());

    print("Qual a nome do estudante? ");
    dadosNewStudent.add(inputReadUser());

    print("Qual a ira do estudante? ");
    dadosNewStudent.add(inputReadUser());

    print("Qual a ano de entrada do estudante? ");
    dadosNewStudent.add(inputReadUser());

    return dadosNewStudent;
  }

  int exit = 0;
  do {
    print('ESCOLHA A OPÇÃO');
    print('[1] Cadastrar');
    print('[2] Buscar por nome');
    print('[3] Buscar por matrícula');
    print('[4] Remover por matricula');
    print('[5] Listar todos');
    print('[6] IRA >= 6');
    print('[7] Apagados todos');
    print('[8] Sair');
    int? input = int.parse(stdin.readLineSync().toString());
    exit = input.toInt();
    print(Process.runSync("cls", [], runInShell: true).stdout);

    switch (input) {
      case 1:
        prepareInputDadosNewStudant(dadosNewStudent());
        break;
      case 2:
        print('[2] Buscar por nome');
        getName(inputReadUser());
        break;
      case 3:
        print('[3] Buscar por matrícula');
        getRecordStudant(inputReadUser());
        break;
      case 4:
        print('[4] Remover por matricula');
        removeRecordStudent(inputReadUser());
        break;
      case 5:
        print('[5] Listar todos');
        getAllStudent();
        break;
      case 6:
        print('[6] IRA >= 6');
        getIraAproved();
        break;
      case 7:
        print('[7] Apagados todos');
        removeAllStudants();
        break;
      default:
        break;
    }
  } while (exit != 8);
}
