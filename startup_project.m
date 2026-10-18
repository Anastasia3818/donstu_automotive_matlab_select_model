% Настройка окружения корневого проекта
disp('Инициализация temp_sensor_system...');

assignin('base', 'TS_SAMPLE_TIME', 0.01);
assignin('base', 'ADC_MIN', 0);
assignin('base', 'ADC_MAX', 100);

proj_root = currentProject().RootFolder;

% Путь к модулю log
module_path = fullfile(proj_root, 'libs', 'temp_sensor_log');
if isfolder(module_path)
    addpath(module_path);
    disp('Путь к модулю log добавлен.');
end

% Путь к модулю exp
module_path_exp = fullfile(proj_root, 'libs', 'temp_sensor_exp');
if isfolder(module_path_exp)
    addpath(module_path_exp);
    disp('Путь к модулю exp добавлен.');
end

disp('Окружение готово.');