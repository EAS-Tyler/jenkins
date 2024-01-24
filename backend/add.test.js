const add = require('./app')

test('properly adds 2 numbers', () => {
    expect(add(1, 2)).toBe(3)
})

