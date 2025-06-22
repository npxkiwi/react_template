import React from 'react';
import { Moon, Sun } from 'lucide-react';
import { useTheme } from '@/components/ThemeProvider';
import NavItem from '@/components/NavItem';
import locales from '@/utils/locales';

const ThemeSwitcher: React.FC = () => {
  const { theme, setTheme } = useTheme();

  return (
    <NavItem
      icon={theme === 'dark' ? Sun : Moon}
      label={locales.change_theme}
      onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
    />
  );
};

export default ThemeSwitcher;