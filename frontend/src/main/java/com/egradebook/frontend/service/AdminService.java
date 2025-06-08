package com.egradebook.frontend.service;


import com.egradebook.frontend.dto.*;
import com.egradebook.frontend.model.Subject;
import com.egradebook.frontend.model.SubjectGroup;
import com.egradebook.frontend.model.Teacher;
import com.egradebook.frontend.request.ChangeClassRequest;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class AdminService {
    private static final ObjectMapper mapper = new ObjectMapper();

    public static void addLessonToSchedule(AddScheduleRequest scheduleRequest) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(scheduleRequest);
            System.out.println(json);
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/schedule/add"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();


            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Dodano lekcję do planu!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteLessonFromSchedule(int schedule_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/schedule/remove/"+schedule_id))
                    .header("Content-Type", "application/json").DELETE()
                    .build();


            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Usunięto lekcję z planu!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void addClassProfile(AddClassProfileRequest profile) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            }

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(profile);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/add-classprofile"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                System.out.println("Dodano lekcję do planu!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteClassProfile(int profile_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/delete-classprofile/"+profile_id))
                    .header("Content-Type", "application/json").DELETE()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Usunięto Profil Klasy!");
            } else {
                System.out.println("Błąd: " + response.body());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void addClass(AddClassRequest clazz) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            }

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(clazz);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/add-class"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                System.out.println("Dodano klase!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static boolean deleteClass(int class_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return false;
            }
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/delete-class/" + class_id))
                    .header("Content-Type", "application/json")
                    .DELETE()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                System.out.println("Usunięto klase!");
            } else {
                System.out.println("Błąd: " + response.body());
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }


    public static Pair<Integer, List<Teacher>> getAllTeachers() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/teachers"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Teacher> teachers = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Teacher>>() {}
                );
                return new Pair<>(response.statusCode(), teachers);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }


    public static Pair<Integer, List<SubjectGroup>> getStudentSubjectGroups(int student_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/student-subject-groups/" + student_id))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<SubjectGroup> subjectGroups = mapper.readValue(
                        response.body(),
                        new TypeReference<List<SubjectGroup>>() {}
                );
                return new Pair<>(response.statusCode(), subjectGroups);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }

    public static void assignGroupToSubject(AssignStudentToGroupsRequest groups) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            }

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(groups);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/assign-to-groups"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                System.out.println("Przypisano do grup!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Pair<Integer, Integer> getUserIdByStudentId(int student_id) {
        try{
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/get-student-id/user_id/" + student_id))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                return new Pair<>(response.statusCode(), Integer.parseInt(response.body()));
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }

    public static Pair<Integer, Integer> getUserIdByTeacherId(int teacher_id) {
        try{
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/get-teacher-id/user_id/" + teacher_id))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                return new Pair<>(response.statusCode(), Integer.parseInt(response.body()));
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }

    public static void editPersonalInfo(int user_id, EditUserPersonalDataRequest edit) {
        try{
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            }

            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(edit);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/edit-personaldata/" + user_id))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                System.out.println("Zmieniono dane!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void changeStudentClass(ChangeClassRequest change) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            }
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(change);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/change-class"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                System.out.println("Zmieniono klase!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteStudent(int student_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/delete-student/"+student_id))
                    .header("Content-Type", "application/json").DELETE()
                    .build();


            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Usunięto ucznia!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteTeacher(int teacher_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/delete-teacher/"+teacher_id))
                    .header("Content-Type", "application/json").DELETE()
                    .build();


            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Usunięto nauczyciela!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Pair<Integer, List<Subject>> getAllSubjects() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/subjects"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Subject> subjects = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Subject>>() {}
                );
                return new Pair<>(response.statusCode(), subjects);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }

    public static void addTeacherSubject(int teacher_id, int subject_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/add-teacher-subject/"+teacher_id+"/"+subject_id))
                    .header("Content-Type", "application/json").PUT(HttpRequest.BodyPublishers.noBody())
                    .build();


            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Dodano przedmiot!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteTeacherSubject(int teacher_id, int subject_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/delete-teacher-subject/"+teacher_id+"/"+subject_id))
                    .header("Content-Type", "application/json").DELETE()
                    .build();


            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Usunięto przedmiot!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
