# Используйте официальный образ Node.js для среды выполнения
FROM node:14

# Установите рабочий каталог в Docker
WORKDIR /usr/src/app

# Копируйте оба файла package.json и package-lock.json
COPY package*.json ./

# Установите зависимости вашего проекта
RUN npm install

# Копируйте исходный код вашего приложения в Docker
COPY . .

# Сообщите Docker о порте, который должен быть открыт во время выполнения
EXPOSE 8000

# Запустите приложение
CMD [ "node", "main.js" ]