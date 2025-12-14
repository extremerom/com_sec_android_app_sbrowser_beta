.class public interface abstract Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V
.end method

.method public abstract bringToFrontMainLayout()V
.end method

.method public abstract canSeekBackward()Z
.end method

.method public abstract canSeekForward()Z
.end method

.method public abstract createFeatureItem(ILandroid/view/View;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;
.end method

.method public abstract enableScreenWakeLock(Z)V
.end method

.method public abstract exitFullscreenByUser(Z)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getBufferPercentage()I
.end method

.method public abstract getClosedCaptionVisibility()I
.end method

.method public abstract getCurrentBrightness()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentVolume()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;
.end method

.method public abstract getHoverListener()Landroid/view/View$OnHoverListener;
.end method

.method public abstract getMaxBrightnessSetting()I
.end method

.method public abstract getMaxVolume()I
.end method

.method public abstract getOverlapPointForAudioShockWarning(I)I
.end method

.method public abstract getPageTitle()Ljava/lang/String;
.end method

.method public abstract getPageUrl()Ljava/lang/String;
.end method

.method public abstract getParentActivity()Landroid/app/Activity;
.end method

.method public abstract getPlaybackRate()D
.end method

.method public abstract getTerrace()Lcom/sec/terrace/Terrace;
.end method

.method public abstract getToastView()Landroid/widget/TextView;
.end method

.method public abstract getVideoCapture()Landroid/graphics/Bitmap;
.end method

.method public abstract getVideoCapture(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideoRatioMode()I
.end method

.method public abstract getVideoRect(Landroid/graphics/Rect;)V
.end method

.method public abstract handleKey(Landroid/view/KeyEvent;)Z
.end method

.method public abstract hideGestureView()V
.end method

.method public abstract hideMainView(Z)V
.end method

.method public abstract hideSystemVolumeUI()V
.end method

.method public abstract isActivityHidden()Z
.end method

.method public abstract isAudioOnlyMode()Z
.end method

.method public abstract isContentFlexMode()Z
.end method

.method public abstract isDownloadableVideoUrl()Z
.end method

.method public abstract isGestureOnlyEnabled()Z
.end method

.method public abstract isGestureSeeking()Z
.end method

.method public abstract isIsInPictureInPictureMode()Z
.end method

.method public abstract isLiveStream()Z
.end method

.method public abstract isLiveTextViewVisible()Z
.end method

.method public abstract isLocked()Z
.end method

.method public abstract isMSE()Z
.end method

.method public abstract isMainViewInitialized()Z
.end method

.method public abstract isPlaybackRatePopupShowing()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPopupModeReady()Z
.end method

.method public abstract isProgressBarAnimating()Z
.end method

.method public abstract isShowingMainView()Z
.end method

.method public abstract isStandalonePlayer()Z
.end method

.method public abstract isSurfaceChanging()Z
.end method

.method public abstract isTalkbackEnabled()Z
.end method

.method public abstract keyVolumeDown()V
.end method

.method public abstract keyVolumeUp()V
.end method

.method public abstract notifyFinishedTransition()V
.end method

.method public abstract notifyMainViewInitialized()V
.end method

.method public abstract notifyVideoPlaybackCompleted()V
.end method

.method public abstract notifyVideoPlaybackStateChanged(Z)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onItemClickForExtractText(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V
.end method

.method public abstract onMediaBufferingEnd()V
.end method

.method public abstract onMediaBufferingStart()V
.end method

.method public abstract onMediaInfoMetadataUpdate()V
.end method

.method public abstract onNextFocus()V
.end method

.method public abstract onNextSpeedFocus()V
.end method

.method public abstract onPreviousFocus()V
.end method

.method public abstract onPreviousSpeedFocus()V
.end method

.method public abstract onRotationChanged()V
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onVideoViewInit()V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract performTScanClick()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setBrightness(I)V
.end method

.method public abstract setClosedCaptionVisibility(Z)V
.end method

.method public abstract setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V
.end method

.method public abstract setFullscreenVideoMode(Z)V
.end method

.method public abstract setGestureMode(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V
.end method

.method public abstract setLock(Z)V
.end method

.method public abstract setMuted(Z)V
.end method

.method public abstract setPlaybackRate(D)V
.end method

.method public abstract setVideoRatioConfiguration(I)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract shouldAddLiveText()Z
.end method

.method public abstract showDoubleTapAnimation(I)V
.end method

.method public abstract showGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V
.end method

.method public abstract showLockView()V
.end method

.method public abstract showMainView(Z)V
.end method

.method public abstract showPlaybackSpeedView()V
.end method

.method public abstract startRecognizeWithDelay()V
.end method

.method public abstract startTextSelectionByLongClick(FF)Z
.end method

.method public abstract startVideo()V
.end method

.method public abstract swapToPopupPlayer()V
.end method

.method public abstract toggleLockState()V
.end method

.method public abstract toggleMainView()V
.end method

.method public abstract toggleMoreMenu()V
.end method

.method public abstract togglePlayback(Z)V
.end method

.method public abstract toggleRotation()V
.end method

.method public abstract updateFeatureUpperViews()V
.end method

.method public abstract updateLiveTextButton()V
.end method

.method public abstract updatePlaybackSpeedControl()V
.end method

.method public abstract updateVolumeStatus()V
.end method
