import { handler } from '../src/lambdas/foo';

test("returns true", () => {
  expect(handler()).toBe(true);
})
