# fish_redux_demo 迁移说明

## ⚠️ 核心问题

**fish_redux 已归档停更**，不支持 Dart 3 / null safety，项目当前无法在 Dart 3 环境下编译。

## 依赖升级状态

| 依赖 | 旧版本 | 新版本 | 状态 |
|---|---|---|---|
| SDK | >=2.7.0 <3.0.0 | >=3.0.0 <4.0.0 | ⚠️ fish_redux 不兼容 |
| cupertino_icons | ^0.1.3 | ^1.0.8 | ✅ |
| fish_redux | ^0.3.4 | 无法升级 | ❌ 已停更 |
| dio | ^3.0.9 | ^5.4.0 | ✅ |
| json_annotation | ^2.4.0 | ^4.9.0 | ✅ |

## 迁移方案

### 方案一：替换为 flutter_bloc（推荐）

fish_redux 的 Page/Component/Effect/Reducer/State 模式可以映射到 flutter_bloc：

| fish_redux | flutter_bloc |
|---|---|
| Page | BlocProvider + BlocBuilder |
| Effect | BlocEventHandler |
| Reducer | Bloc.on<Event>() |
| State | Bloc State class |
| Component |BlocBuilder (局部) |
| Adapter | BlocBuilder + ListView.builder |
| Store/GlobalStore | MultiBlocProvider |

### 方案二：替换为 riverpod

| fish_redux | riverpod |
|---|---|
| Page | ConsumerWidget |
| Effect | Provider 逻辑 |
| Reducer | StateNotifier |
| State | State class |
| Store/GlobalStore | ProviderScope |

### 方案三：保持 Dart 2.x 不升级

如果只是作为学习 fish_redux 的历史参考项目，可以保持 SDK `>=2.7.0 <3.0.0` 不变。

## 迁移工作量评估

- 56 个 .dart 文件需要重写
- 7 个功能模块（guide, count, jump, list, list_edit, comp, broadcast）
- 1 个全局 Store
- 预估工作量：每个模块 2-4 小时，总计约 20-30 小时
