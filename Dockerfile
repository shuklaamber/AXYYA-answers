FROM node:14
WORKDIR /Users/amber.shukla/vsCode/AXYYA-answers
COPY package*.json app.js ./
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]