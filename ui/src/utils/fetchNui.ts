import { isEnvBrowser } from './misc';

/**
 * Fetches data from the NUI (New User Interface) in a FiveM environment.
 * If running in a browser environment, it can return mock data.
 *
 * @param eventName - The name of the NUI event to fetch data from.
 * @param data - Optional data to send with the request.
 * @param mock - Optional mock data to return if running in a browser environment.
 * @returns A promise that resolves to the fetched data of type T.
 * 
 * @example
 * fetchNui<{ success: boolean }>('exampleEvent', { key: 'value' }, { data: { success: true }, delay: 1000 });
 * 
 */
export async function fetchNui<T>(eventName: string, data?: unknown, mock?: { data: T; delay?: number }): Promise<T> {
  if (isEnvBrowser()) {
    if (!mock) return {} as T;
    await new Promise((resolve) => setTimeout(resolve, mock.delay));
    return mock.data;
  }

  const options = {
    method: 'post',
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: JSON.stringify(data),
  };

  const resourceName = window.GetParentResourceName?.() || 'nui-frame-app';

  const resp = await fetch(`https://${resourceName}/${eventName}`, options);
  const respFormatted = await resp.json();

  return respFormatted;
}
