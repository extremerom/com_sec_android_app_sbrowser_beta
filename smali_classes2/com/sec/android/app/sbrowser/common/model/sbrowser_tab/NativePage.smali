.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;
    }
.end annotation


# virtual methods
.method public captureBitmapIfReady(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public enableQuickAccessHoverPopup(Z)V
    .locals 0

    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V
    .locals 0

    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initializePageViewIfNeeded(Z)V
    .locals 0

    return-void
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInitialScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScrollBottomReached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScrollTopReached()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyLaunchNewTabFromAssistIntent()V
    .locals 0

    return-void
.end method

.method public notifyLaunchNewTabFromExternalApp()V
    .locals 0

    return-void
.end method

.method public notifyToolbarHeightChanged()V
    .locals 0

    return-void
.end method

.method public onInputUrl()V
    .locals 0

    return-void
.end method

.method public onTalkBackStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onUrlEditModeFinished()V
    .locals 0

    return-void
.end method

.method public onUrlEditModeStarted()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public requestFocusDown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBitmapCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;)V
    .locals 0

    return-void
.end method
