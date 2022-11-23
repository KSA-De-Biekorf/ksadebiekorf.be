import type { Writable } from 'svelte/store';
import  { writable } from 'svelte/store';

export type ModalController = {
  title: string;
  content: any;
  visible: boolean;
};

export const modalController: Writable<ModalController> = writable({
  title: "Error 404",
  content: null,
  visible: false
} as ModalController);
