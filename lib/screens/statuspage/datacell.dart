import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class datacell extends StatefulWidget {
  const datacell({Key? key}) : super(key: key);

  @override
  State<datacell> createState() => _datacellState();
}

class _datacellState extends State<datacell> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Data',
            style: TextStyle(color: Color.fromARGB(255, 65, 65, 65)),
          ),
        ),
        DataColumn(
          label: Text(
            'Mbps',
            style: TextStyle(color: Color.fromARGB(255, 26, 243, 73)),
          ),
        ),
        DataColumn(
          label: Text(
            'Mbps',
            style: TextStyle(
              color: Color.fromARGB(255, 26, 200, 243),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('09/22')),
            DataCell(Text('50.21')),
            DataCell(Text('12.43')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('31/421')),
            DataCell(Text('25.54')),
            DataCell(Text('74.55')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('22/22')),
            DataCell(Text('29.54')),
            DataCell(Text('23.4 ')),
          ],
        ),
      ],
    );
  }
}
