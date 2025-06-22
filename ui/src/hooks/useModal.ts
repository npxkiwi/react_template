import { useContext } from 'react';
import { ModalsContext } from '@/components/ModalsProvider';

const useModal = () => useContext(ModalsContext);

export default useModal;
