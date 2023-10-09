tag: terminal
and tag: user.npm
-
node install$: "npm install\n"
node clean install$: "npm ci\n"
node install [<user.text>]:
    insert("npm install ")
    insert(text or "")
node audit: "npm audit\n"
node audit fix: "npm audit fix\n"
node outdated: "npm outdated\n"
node list [<user.text>]:
    insert("npm list ")
    insert(text or "")
node start: "npm start\n"
node run [<user.text>]:
    insert("npm run ")
    insert(text or "")
node format: "npm run format:write\n"

node use: "nvm use\n"
node list: "nvm list\n"
node version: "nvm version\n"
