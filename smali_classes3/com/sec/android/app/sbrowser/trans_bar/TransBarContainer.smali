.class public abstract Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract clearTranslate()V
.end method

.method public abstract disableSplitSwitcher()V
.end method

.method public abstract enableTransBarContainerWithVisibility(Z)V
.end method

.method public abstract getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;
.end method

.method public abstract getUXversion()I
.end method

.method public abstract isTransBarEnabled()Z
.end method

.method public abstract isTranslated()Z
.end method

.method public abstract notifyBackgroundColorChanged()V
.end method

.method public abstract notifyChangeMode()V
.end method

.method public abstract notifyCurrentUrlChanged(Ljava/lang/String;Z)V
.end method

.method public abstract notifyTransBarClose()V
.end method

.method public abstract notifyVisibilityChanged()V
.end method

.method public abstract onLoadFinished(I)V
.end method

.method public abstract onMultiWindowModeChanged(Z)V
.end method

.method public abstract onOffSplitMode()V
.end method

.method public abstract onOffsetsForFullscreenChanged(FFZZ)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract onUpdateLangList()V
.end method

.method public abstract onVisibilityDelayed(ZZ)V
.end method

.method public abstract sendTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
.end method

.method public abstract setListener(Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;)V
.end method

.method public abstract setupPopupLayout(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract shouldCaptureLater()Z
.end method

.method public abstract startLoadingAnimation()V
.end method

.method public abstract updateScrollSyncState()V
.end method

.method public abstract updateTransBarBtnStatus(Z)V
.end method
