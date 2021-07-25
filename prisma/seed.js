const db = require('../db');

module.exports = async function seed() {
  await db.tag.createMany({
    data: [
      { nameTag: 'react' },
      { nameTag: 'javascript' },
      { nameTag: 'html/css' },
    ],
  });
};

module
  .exports()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await db.$disconnect();
  });

// npx prisma migrate dev
// npx prisma db seed --preview-feature
// npx prisma migrate reset
