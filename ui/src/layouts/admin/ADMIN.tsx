import React from 'react';
import { useAdminVisibilityState } from '@/state/visibility';
import { useExitListener } from '@/hooks/useExitListener';
import { useNuiEvent } from '@/hooks/useNuiEvent';

const Atm: React.FC = () => {
  const [visible, setVisible] = useAdminVisibilityState();

  const [shouldRender, setShouldRender] = React.useState(false);

  React.useEffect(() => {
    if (visible) setShouldRender(true);
  }, [visible]);

  useExitListener(setVisible);

  useNuiEvent('openADMIN', () => {
    setVisible(true);
  });

  return (
    <>
      {shouldRender && (
        <div
          onAnimationEnd={() => !visible && setShouldRender(false)}
          data-state={visible ? 'open' : 'closed'}
          className="relative flex min-w-[400px] max-w-lg flex-col gap-2 rounded-lg bg-background p-2 fill-mode-forwards data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[state=closed]:slide-out-to-bottom data-[state=open]:slide-in-from-bottom"
        >
          <div className="flex h-full w-full flex-col items-center justify-center gap-2 rounded-lg border bg-background p-2">
            <h1 className="text-xl font-bold">ADMIN</h1>
            <p className="text-sm text-muted-foreground">This is a placeholder for the ADMIN UI.</p>
          </div>
        </div>
      )}
    </>
  );
};

export default Atm;
