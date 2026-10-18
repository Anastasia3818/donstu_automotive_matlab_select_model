% Настройка окружения корневого проекта
disp('Инициализация temp_sensor_system...');

assignin('base', 'TS_SAMPLE_TIME', 0.01);
assignin('base', 'ADC_MIN', 0);
assignin('base', 'ADC_MAX', 100);

% Принудительно добавляем путь к модулю
proj_root = currentProject().RootFolder;
module_path = fullfile(proj_root, 'libs', 'temp_sensor_log');
if isfolder(module_path)
    addpath(module_path);
    disp('Путь к модулю добавлен.');
end

disp('Окружение готово.');