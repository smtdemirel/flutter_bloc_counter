part of 'counter_bloc.dart';

class CounterBlocView extends StatelessWidget {
  CounterBlocView({Key? key}) : super(key: key);
  final bloc = CounterBloc(); //optional
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Counter App"),
      ),
      body: BlocProvider(
        create: (context) => bloc, // or CounterBloc();
        child: BlocBuilder(
          bloc: bloc, //optional
          builder: (BuildContext context, CounterState state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context
                      .watch<CounterBloc>()
                      .state
                      .counter
                      .toString(), //or state.counter.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline1, //Flutter Material Theme default headline1 style
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          onPressed: () {
                            // Added Decrement Event
                            context
                                .read<CounterBloc>()
                                .add(CounterDecrementEvent());
                          },
                          child: const Icon(Icons.exposure_minus_1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ElevatedButton(
                          onPressed: () {
                            // Added Increment Event
                            context
                                .read<CounterBloc>()
                                .add(CounterIncrementEvent());
                          },
                          child: const Icon(Icons.plus_one),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
