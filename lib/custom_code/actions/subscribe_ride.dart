// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import "package:utility_functions_library_8g4bud/backend/schema/structs/index.dart"
    as utility_functions_library_8g4bud_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';
import '/app_state.dart'; // Import para acessar FFAppState

// Função auxiliar para diagnosticar problemas de realtime
Future<void> diagnoseRealtimeConnection() async {
  print('🔍 DIAGNÓSTICO DE CONEXÃO REALTIME');
  print('=====================================');

  try {
    // Verificar conexão com Supabase
    final client = SupaFlow.client;
    print('✅ Cliente Supabase inicializado');

    // Verificar se a tabela existe e tem registros
    final tableCheck = await client.from('rides').select('count');
    print('✅ Tabela "rides" acessível');

    // Verificar se há alguma ride para testar
    final sampleRide = await client.from('rides').select('id').limit(1);
    print('✅ Dados de exemplo encontrados: $sampleRide');

    // Testar conexão realtime
    final testChannel = client.channel('test-channel');
    print('✅ Canal de teste criado');

    testChannel.subscribe((status, error) {
      print('📡 Status do canal de teste: $status');
      if (error != null) {
        print('❌ Erro no canal: $error');
      }
    });

    // Fechar canal de teste
    await Future.delayed(Duration(seconds: 1));
    client.removeChannel(testChannel);
    print('✅ Canal de teste fechado');
  } catch (e) {
    print('❌ ERRO NO DIAGNÓSTICO: $e');
  }

  print('=====================================');
  print('🏁 DIAGNÓSTICO FINALIZADO');
}

// Função para verificar se o realtime está habilitado na tabela
Future<void> checkRealtimeSetup() async {
  print('🔍 VERIFICANDO CONFIGURAÇÃO REALTIME');
  print('=====================================');

  try {
    // Verificar se podemos fazer uma consulta de mudança
    final client = SupaFlow.client;

    // Tentar fazer uma alteração simples para testar
    print('🧪 Fazendo teste de alteração...');

    // Pegar uma ride existente para teste
    final existingRide =
        await client.from('rides').select('id').limit(1).single();
    final testId = existingRide['id'];

    print('📝 Ride encontrada para teste: $testId');

    // Fazer uma alteração simples (isso deve disparar o realtime se estiver funcionando)
    await client.from('rides').update(
        {'updated_at': DateTime.now().toIso8601String()}).eq('id', testId);

    print('✅ Alteração de teste realizada');
  } catch (e) {
    print('❌ ERRO NO TESTE: $e');
    print('💡 POSSÍVEIS CAUSAS:');
    print('   - Tabela não tem realtime habilitado');
    print('   - Problemas de RLS (Row Level Security)');
    print('   - Conexão com Supabase falhando');
  }

  print('=====================================');
}

// Função auxiliar para testar realtime com um ID específico
Future<void> testRealtimeConnection(String testRideId) async {
  print('🧪 TESTANDO CONEXÃO REALTIME');
  print('=====================================');

  // Primeiro, configurar um listener de teste
  final testChannel = SupaFlow.client.channel('test-realtime-channel');

  bool receivedEvent = false;

  testChannel
      .onPostgresChanges(
    event: PostgresChangeEvent.all,
    schema: 'public',
    table: 'rides',
    callback: (PostgresChangePayload payload) async {
      receivedEvent = true;
      print('🎯 TESTE: Evento realtime recebido! [test-realtime-channel]');
      print('📋 TESTE: Tipo: ${payload.eventType}');
    },
  )
      .subscribe((status, error) {
    print('📡 TESTE: Status do canal [test-realtime-channel]: $status');
    if (error != null) {
      print('❌ TESTE: Erro no canal [test-realtime-channel]: $error');
    }
  });

  // Aguardar um pouco para conectar
  await Future.delayed(Duration(seconds: 2));

  try {
    // Fazer uma alteração de teste
    print('🔄 TESTE: Fazendo alteração na ride $testRideId...');
    await SupaFlow.client.from('rides').update(
        {'updated_at': DateTime.now().toIso8601String()}).eq('id', testRideId);

    // Aguardar para ver se o evento chega
    await Future.delayed(Duration(seconds: 3));

    if (receivedEvent) {
      print('✅ TESTE: Realtime funcionando! Evento recebido.');
    } else {
      print('❌ TESTE: Nenhum evento recebido. Possíveis problemas:');
      print('   - Realtime não habilitado na tabela rides');
      print('   - Problemas de RLS bloqueando mudanças');
      print('   - Conexão websocket falhando');
    }
  } catch (e) {
    print('❌ TESTE: Erro ao fazer alteração: $e');
  }

  // Limpar canal de teste
  SupaFlow.client.removeChannel(testChannel);
  print('🧹 TESTE: Canal de teste removido');
  print('=====================================');
}

//
Future<dynamic> subscribeRide(
  String id,
  Future Function() callbackAction,
) async {
  // Add your function code here!
  print('🔍 DEBUG: Iniciando configuração realtime para ride ID: $id');

  // Verificar se o cliente Supabase está conectado
  try {
    final connectionTest =
        await SupaFlow.client.from('rides').select('count').limit(1);
    print('✅ DEBUG: Conexão com Supabase OK - Tabela rides acessível');
  } catch (e) {
    print('❌ DEBUG: ERRO na conexão Supabase: $e');
  }

  // Criar o canal com callback de status para depuração
  final channel = SupaFlow.client.channel('public:rides:$id');

  // Configura o listener para mudanças em tempo real na tabela rides
  // e subscribe apenas uma vez
  channel
      .onPostgresChanges(
    event: PostgresChangeEvent.all,
    schema: 'public',
    table: 'rides',
    callback: (PostgresChangePayload payload) async {
      print('🎯 DEBUG: Evento realtime recebido! [public:rides:$id]');
      print('📋 DEBUG: Tipo do evento: ${payload.eventType}');
      print('📋 DEBUG: Dados do payload disponíveis');

      try {
        // Apenas executa o callback fornecido quando um evento chegar
        print('▶️ DEBUG: Executando callback para canal [public:rides:$id]...');
        await callbackAction();
        print('✅ DEBUG: Callback executado com sucesso! [public:rides:$id]');
      } catch (e) {
        print('❌ DEBUG: Erro ao executar callback [public:rides:$id]: $e');
        // Em caso de erro, ainda tenta executar o callback
        try {
          print(
              '🔄 DEBUG: Tentando executar callback novamente [public:rides:$id]...');
          await callbackAction();
          print(
              '✅ DEBUG: Callback executado na segunda tentativa! [public:rides:$id]');
        } catch (_) {
          print('❌ DEBUG: Callback falhou definitivamente [public:rides:$id]');
          // Ignora erros no callback para não quebrar o app
        }
      }
    },
  )
      .subscribe((status, error) {
    print('📡 DEBUG: Status do canal realtime [public:rides:$id]: $status');
    if (error != null) {
      print('❌ DEBUG: Erro no canal realtime [public:rides:$id]: $error');
    }
  });

  print('✅ Listener realtime configurado e inscrito!');
  print('🔍 DEBUG: Canal criado: public:rides:$id');
  print(
      '💡 DEBUG: Para testar, faça uma alteração na tabela rides no Supabase');
}
