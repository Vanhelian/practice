# Плагин Codex: иллюстрации в едином стиле

Плагин `consistent-illustrations` включает [навык](.agents/skills/consistent-illustrations/SKILL.md) и четыре оригинальных референса. Манифест Codex находится в `.codex-plugin/plugin.json`, каталог плагинов — в `.agents/plugins/marketplace.json`.

## Установка в Codex

Выполните в терминале того Codex, в котором будете пользоваться плагином:

```sh
codex plugin marketplace add Vanhelian/practice --ref master
codex plugin add consistent-illustrations@vanhelian-art
codex plugin list --marketplace vanhelian-art --json
```

В списке плагин должен иметь `installed: true` и `enabled: true`. После установки откройте новый чат Codex. Пример запроса:

```text
Используй навык consistent-illustrations из плагина consistent-illustrations.
Нарисуй небольшую мастерскую в старом городе на закате.
```

Для установки из распакованного архива:

```sh
codex plugin marketplace add /путь/к/consistent-illustrations-plugin
codex plugin add consistent-illustrations@vanhelian-art
```

Команды проверены через Codex CLI на локальном пакете: плагин распознан, установлен и включён; в установленной копии проверены навык и все четыре референса. Установка в этой облачной среде не переносится автоматически в другой клиент или чат Codex. Для выполнения навыка в целевом Codex требуется доступный инструмент генерации изображений с поддержкой визуальных референсов.

## Поведение навыка

Навык использует сцену из текущего запроса, четыре встроенных визуальных образца, горизонтальный формат 16:9, низкую детализацию, мягкий свет и естественную асимметрию. По умолчанию аниме запрещено. Персонажи и композиции образцов не переносятся в новую сцену автоматически.

## Встроенные образцы стиля

В состав навыка включены все четыре оригинала из `sprites.rar`, без перекодирования. Все изображения проверены и просмотрены. Пути разрешаются относительно каталога `SKILL.md`; при каждой генерации навык требует просмотра всех четырёх образцов и передачи их инструменту генерации.

1. [style-reference-1.png](.agents/skills/consistent-illustrations/assets/style-reference-1.png) — персонаж в лесу, рука у подбородка.
2. [style-reference-2.jpg](.agents/skills/consistent-illustrations/assets/style-reference-2.jpg) — крупный план персонажа в синем плаще в ночном лесу.
3. [style-reference-3.jpg](.agents/skills/consistent-illustrations/assets/style-reference-3.jpg) — персонаж сидит на краю кровати у окна.
4. [style-reference-4.jpg](.agents/skills/consistent-illustrations/assets/style-reference-4.jpg) — персонаж на кровати обнимает подушку.

Пакет навыка собран полностью. Пробная генерация изображения в рамках сборки не выполнялась.

Навык также можно использовать отдельно: скопируйте всю папку `.agents/skills/consistent-illustrations`, включая `assets`, в `.agents/skills/` другого проекта. Установка плагина выполняется через Codex и его конфигурацию, а не через обычный чат ChatGPT.

Старые материалы Practice удалены отдельным коммитом. Они остаются доступны в истории Git.
