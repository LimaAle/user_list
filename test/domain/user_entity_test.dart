import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:user_list/data/repositories/user/user_repository_impl.dart';
import 'package:user_list/data/services/user/user_api.dart';
import 'package:user_list/domain/entities/user/user_entity.dart';
import 'package:user_list/domain/entities/user_detail/user_detail_entity.dart';

@GenerateMocks([UserApi])
import 'user_entity_test.mocks.dart';

void main() {
  group('UserRepository', () {
    late MockUserApi mockUserApi;
    late UserRepositoryImpl userRepository;

    setUp(() {
      mockUserApi = MockUserApi();
      userRepository = UserRepositoryImpl(mockUserApi);
    });

    test('Deve retornar uma lista de usuários com sucesso', () async {
      final List<UserEntity> mockUsers = [
        UserEntity(id: 1, name: 'User 1', email: 'user1@example.com',avatar: ''),
        UserEntity(id: 2, name: 'User 2', email: 'user2@example.com',avatar: ''),
      ];

      when(mockUserApi.getUser()).thenAnswer((_) async => mockUsers );

      final users = await userRepository.getUser();

      expect(users, isA<List<UserEntity>>());
      expect(users.length, 2);
      expect(users[0].name, 'User 1');
      expect(users[1].name, 'User 2');
    });

    test('Deve lançar uma exceção quando a API falhar', () async {
      when(mockUserApi.getUser()).thenThrow(Exception('Erro na API'));

      expect(() async => await userRepository.getUser(), throwsException);
    });

    test('Deve retornar detalhes do usuário com sucesso', () async {
    final mockUserDetail = UserDetailEntity(
      id: 1,
      user: UserEntity(id: 1, name: 'User 1', email: 'user1@example.com', avatar: ''),
      street: 'Rua 123',
      city: 'Cidade A',
      country: 'Brasil',
      state: 'Estado X',
    );

    when(mockUserApi.getUserDetail(1)).thenAnswer((_) async => [mockUserDetail]);

    final result = await mockUserApi.getUserDetail(1);

    expect(result, isA<List<UserDetailEntity>>());
    expect(result.length, 1);
    expect(result.first.id, 1);
    expect(result.first.user.name, 'User 1');
  });

  test('Deve lançar uma exceção quando a API de detalhes do usuário falhar', () async {
    when(mockUserApi.getUserDetail(1)).thenThrow(Exception('Erro na API'));

    expect(() async => await mockUserApi.getUserDetail(1), throwsException);
  });
  });
}
