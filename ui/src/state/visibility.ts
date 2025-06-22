import { atom, useAtom, useAtomValue, useSetAtom } from 'jotai';

const testVisibilityAtom = atom(false);
const adminVisibilityAtom = atom(false);

export const useSetTestVisibility = () => useSetAtom(testVisibilityAtom);
export const useTestVisibility = () => useAtomValue(testVisibilityAtom);
export const useTestVisibilityState = () => useAtom(testVisibilityAtom);

export const useSetAdminVisibility = () => useSetAtom(adminVisibilityAtom);
export const useAdminVisibility = () => useAtomValue(adminVisibilityAtom);
export const useAdminVisibilityState = () => useAtom(adminVisibilityAtom);
