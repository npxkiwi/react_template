import { isEnvBrowser } from './misc';
import locale from '../../../locales/da.json';
import { printf } from 'fast-printf';

const locales: Record<string, string | number> = {};

declare global {
  interface String {
    format(...args: unknown[]): string;
  }
}

String.prototype.format = function (...args: unknown[]): string {
  return printf(this as string, ...args);
};

export function setLocale(data: typeof locale) {
  for (const key in locales) locales[key] = key;
  for (const [key, value] of Object.entries(data)) {
    locales[key] = value;
  }
}

if (isEnvBrowser()) {
  for (const [key, value] of Object.entries(locale)) {
    locales[key] = value;
  }
}

export default locales as typeof locale;
