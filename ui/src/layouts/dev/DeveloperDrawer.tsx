import React from 'react';
import { Wrench } from 'lucide-react';
import { Button } from '../../components/ui/button';
import { useTestVisibilityState, useAdminVisibilityState } from '@/state/visibility';
import { Sheet, SheetTrigger, SheetContent, SheetHeader, SheetTitle } from '@/components/ui/sheet';

const DeveloperDrawer: React.FC = () => {
  const [open, setOpen] = React.useState(false);
  const [testVisiblity, setTestVisibility] = useTestVisibilityState();
  const [adminVisibility, setAdminVisibility] = useAdminVisibilityState();

  return (
    <>
      <Sheet open={open} onOpenChange={(open) => setOpen(open)}>
        <SheetTrigger asChild>
          <Button size="icon" variant="secondary" className="absolute bottom-10 right-10 rounded-full">
            <Wrench size={20} />
          </Button>
        </SheetTrigger>
        <SheetContent side="left" className="flex flex-col gap-2">
          <SheetHeader>
            <SheetTitle>Developer drawer</SheetTitle>
          </SheetHeader>

          <Button onClick={() => setTestVisibility((prev) => !prev)}>{testVisiblity ? 'Close' : 'Open'} test</Button>
          <Button onClick={() => setAdminVisibility((prev) => !prev)}>
            {adminVisibility ? 'Close' : 'Open'} admin
          </Button>
        </SheetContent>
      </Sheet>
    </>
  );
};

export default DeveloperDrawer;
