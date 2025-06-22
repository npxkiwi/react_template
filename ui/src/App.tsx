import React from 'react';
import ModalsProvider from './components/ModalsProvider';
import { useNuiEvent } from './hooks/useNuiEvent';
import DeveloperDrawer from '@/layouts/dev/DeveloperDrawer';
import locales, { setLocale } from '@/utils/locales';
import { isEnvBrowser } from './utils/misc';

import TEST from '@/layouts/test/TEST';
import ADMIN from '@/layouts/admin/ADMIN';

const App: React.FC = () => {
  useNuiEvent('setInitData', (data: { locales: typeof locales; permissions: Permissions }) => {
    setLocale(data.locales);
  });

  return (
    <div className="flex h-full w-full items-center justify-center">
      <ModalsProvider>
        <TEST />
        <ADMIN />
        {isEnvBrowser() && <DeveloperDrawer />}
      </ModalsProvider>
    </div>
  );
};

export default App;
