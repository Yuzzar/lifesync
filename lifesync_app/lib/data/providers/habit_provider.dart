import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/habit_model.dart';
import '../repositories/habit_repository.dart';
import 'repository_provider.dart';

// State for habits list
final habitsProvider = StateNotifierProvider<HabitsNotifier, AsyncValue<List<Habit>>>((ref) {
  final repository = ref.watch(habitRepositoryProvider);
  return HabitsNotifier(repository);
});

class HabitsNotifier extends StateNotifier<AsyncValue<List<Habit>>> {
  final HabitRepository _repository;

  HabitsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadHabits();
  }

  Future<void> loadHabits() async {
    state = const AsyncValue.loading();
    try {
      final habits = await _repository.getHabits();
      state = AsyncValue.data(habits);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> createHabit(CreateHabitRequest request) async {
    try {
      await _repository.createHabit(request);
      await loadHabits(); // Reload list
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateHabit(int id, UpdateHabitRequest request) async {
    try {
      await _repository.updateHabit(id, request);
      await loadHabits();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteHabit(int id) async {
    try {
      await _repository.deleteHabit(id);
      await loadHabits();
    } catch (e) {
      rethrow;
    }
  }
}

// Provider for habit check/uncheck
final habitCheckProvider = FutureProvider.family<Habit, int>((ref, habitId) async {
  final repository = ref.watch(habitRepositoryProvider);
  return repository.checkHabit(habitId);
});

// Provider for habit stats
final habitStatsProvider = FutureProvider.family<Map<String, dynamic>, int>((ref, habitId) async {
  final repository = ref.watch(habitRepositoryProvider);
  return repository.getHabitStats(habitId);
});
