﻿package  {		import flash.display.*;	import flash.geom.*;	import flash.events.*;	import flash.net.*;	import flash.text.*;	import fl.transitions.*;	import fl.transitions.easing.*;	import flash.ui.*;	import flash.filters.*;	import flash.media.Sound;	import flash.media.SoundChannel;	import flash.media.SoundTransform;		public class AudioManager extends MovieClip {				internal var main:BenefitCalculator;		internal var currentSound:Sound;		internal var soundChannel:SoundChannel = new SoundChannel();		internal var soundTrans:SoundTransform = soundChannel.soundTransform;		internal var vol:int = 1;		internal var pausePosition:int;		public function AudioManager() {			// constructor code		}				private function init():void {			soundTrans.volume = vol;		}				public function triggerAudio(whichSound:String):void {			soundChannel.stop();			currentSound = null;			if (whichSound=="AUDIO_01_A") {				currentSound = (new Audio_01_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_01_CHOICE1") {				currentSound = (new Audio_01_Choice1() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_01_CHOICE2") {				currentSound = (new Audio_01_Choice2() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_02_A") {				currentSound = (new Audio_02_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_03_A") {				currentSound = (new Audio_03_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_03_CHOICE1") {				currentSound = (new Audio_03_Choice1() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_03_CHOICE2") {				currentSound = (new Audio_03_Choice2() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_03_CHOICE3") {				currentSound = (new Audio_03_Choice3() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_04_A") {				currentSound = (new Audio_04_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_05S_A") {				currentSound = (new Audio_05S_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_05S_CHOICE1") {				currentSound = (new Audio_05S_Choice1() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_05S_CHOICE2") {				currentSound = (new Audio_05S_Choice2() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_05M_A") {				currentSound = (new Audio_05M_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_05M_CHOICE1") {				currentSound = (new Audio_05M_Choice1() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_05M_CHOICE2") {				currentSound = (new Audio_05M_Choice2() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_06S_A") {				currentSound = (new Audio_06S_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_06M_A") {				currentSound = (new Audio_06M_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_07_A") {				currentSound = (new Audio_07_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_07_CHOICE1") {				currentSound = (new Audio_07_Choice1() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_07_CHOICE2") {				currentSound = (new Audio_07_Choice2() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_07_CHOICE3") {				currentSound = (new Audio_07_Choice3() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_07_CHOICE4") {				currentSound = (new Audio_07_Choice4() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_07_CHOICE5") {				currentSound = (new Audio_07_Choice5() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_08S_A") {				currentSound = (new Audio_08S_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_08M_A") {				currentSound = (new Audio_08M_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_09_A") {				currentSound = (new Audio_09_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_09_CHOICE1") {				currentSound = (new Audio_09_Choice1() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_09_CHOICE2") {				currentSound = (new Audio_09_Choice2() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_10S_A") {				currentSound = (new Audio_10S_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_10M_A") {				currentSound = (new Audio_10M_A() as Sound);				soundChannel = currentSound.play();			} else if (whichSound=="AUDIO_10_CHOICE1") {				currentSound = (new Audio_10_Choice1() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_10_CHOICE2") {				currentSound = (new Audio_10_Choice2() as Sound);				soundChannel = currentSound.play();				soundChannel.addEventListener(Event.SOUND_COMPLETE, responseListener, false, 0, true);			} else if (whichSound=="AUDIO_11_A") {				currentSound = (new Audio_11_A() as Sound);				soundChannel = currentSound.play();			}			soundChannel.soundTransform = soundTrans;		}				private function responseListener(e:Event):void {			soundChannel.removeEventListener(Event.SOUND_COMPLETE, responseListener);			currentSound = null;			main.visualManager.cleanScreen();			main.slideManager.prevSlide = main.slideManager.currSlide;			main.slideManager.visitedSlides.push(main.slideManager.prevSlide);			main.slideManager.currSlide = main.actionManager.toSlide;			main.slideManager.loadSlide();		}				public function stopAudio():void {			pausePosition = soundChannel.position;			soundChannel.stop();		}				public function playAudio():void {			currentSound.play(pausePosition);		}				internal function muteSound():void {			vol = 0;			var soundTrans:SoundTransform = soundChannel.soundTransform;			soundTrans.volume = vol;			soundChannel.soundTransform = soundTrans;		}				internal function unmuteSound():void {			vol = 1;			var soundTrans:SoundTransform = soundChannel.soundTransform;			soundTrans.volume = vol;			soundChannel.soundTransform = soundTrans;		}	}	}