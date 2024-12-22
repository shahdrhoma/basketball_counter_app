import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Center(
                child: Text(
                  'Points Counter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(buttonNumber: 1, team: 'A');
                            },
                            child: Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(buttonNumber: 2, team: 'A');
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(buttonNumber: 3, team: 'A');
                            },
                            child: Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(buttonNumber: 1, team: 'B');
                            },
                            child: Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(buttonNumber: 2, team: 'B');
                            },
                            child: Text(
                              'Add 2 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamIncrement(buttonNumber: 3, team: 'B');
                            },
                            child: Text(
                              'Add 3 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(8),
                    backgroundColor: Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetPoints();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
