import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/job_model.dart';
import '../repositories/job_repository.dart';
import 'repository_provider.dart';

// Job Applications Provider
final jobApplicationsProvider = StateNotifierProvider<JobApplicationsNotifier, AsyncValue<List<JobApplication>>>((ref) {
  final repository = ref.watch(jobRepositoryProvider);
  return JobApplicationsNotifier(repository);
});

class JobApplicationsNotifier extends StateNotifier<AsyncValue<List<JobApplication>>> {
  final JobRepository _repository;

  JobApplicationsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadApplications();
  }

  Future<void> loadApplications({String? status}) async {
    state = const AsyncValue.loading();
    try {
      final applications = await _repository.getJobApplications(status: status);
      state = AsyncValue.data(applications);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> createApplication(CreateJobApplicationRequest request) async {
    try {
      await _repository.createJobApplication(request);
      await loadApplications();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateApplication(int id, UpdateJobApplicationRequest request) async {
    try {
      await _repository.updateJobApplication(id, request);
      await loadApplications();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteApplication(int id) async {
    try {
      await _repository.deleteJobApplication(id);
      await loadApplications();
    } catch (e) {
      rethrow;
    }
  }
}

// Projects Provider
final projectsProvider = StateNotifierProvider<ProjectsNotifier, AsyncValue<List<Project>>>((ref) {
  final repository = ref.watch(jobRepositoryProvider);
  return ProjectsNotifier(repository);
});

class ProjectsNotifier extends StateNotifier<AsyncValue<List<Project>>> {
  final JobRepository _repository;

  ProjectsNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadProjects();
  }

  Future<void> loadProjects({String? status}) async {
    state = const AsyncValue.loading();
    try {
      final projects = await _repository.getProjects(status: status);
      state = AsyncValue.data(projects);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> createProject(CreateProjectRequest request) async {
    try {
      await _repository.createProject(request);
      await loadProjects();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateProject(int id, Map<String, dynamic> updates) async {
    try {
      await _repository.updateProject(id, updates);
      await loadProjects();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteProject(int id) async {
    try {
      await _repository.deleteProject(id);
      await loadProjects();
    } catch (e) {
      rethrow;
    }
  }
}

// Job Stats Provider
final jobStatsProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final repository = ref.watch(jobRepositoryProvider);
  return repository.getJobStats();
});
