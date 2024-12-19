db.createUser({
  user: 'scrapper',
  pwd: 'password',
  roles: [
    {
      role: 'readWrite',
      db: 'central'
    }
  ]
})