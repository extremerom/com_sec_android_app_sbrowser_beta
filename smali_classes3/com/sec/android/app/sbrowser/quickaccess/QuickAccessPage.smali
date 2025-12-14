.class public Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;


# instance fields
.field private mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    return-void
.end method

.method public constructor <init>(Lm/n;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e05a2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->initializePageViewIfNeeded(Z)V

    return-void
.end method


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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->captureBitmapIfReady(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->closeDialogIfNecessary()V

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->destroy()V

    return-void
.end method

.method public enableQuickAccessHoverPopup(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->enableQuickAccessHoverPopup(Z)V

    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V

    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->exitEditMode(ZZ)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    return-object p0
.end method

.method public initializePageViewIfNeeded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->initializeIfNeeded(Z)V

    return-void
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isCheckableBottomBarVisible()Z

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public isInitialScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isInitialScreen()Z

    move-result p0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isNeedToHideToolbarShadow()Z

    move-result p0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isReadyToShow()Z

    move-result p0

    return p0
.end method

.method public isScrollBottomReached()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isScrollBottomReached()Z

    move-result p0

    return p0
.end method

.method public isScrollTopReached()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isScrollTopReached()Z

    move-result p0

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->isSolidColorLightThemed()Z

    move-result p0

    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->notifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public notifyLaunchNewTabFromAssistIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->onLaunchNewTabFromAssistIntent()V

    return-void
.end method

.method public notifyLaunchNewTabFromExternalApp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->onLaunchNewTabFromExternalApp()V

    return-void
.end method

.method public notifyToolbarHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->onToolbarHeightChanged()V

    return-void
.end method

.method public onInputUrl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->resetToolbarTranslation()V

    return-void
.end method

.method public onTalkBackStatusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->resetToolbarTranslation()V

    :cond_0
    return-void
.end method

.method public onUrlEditModeFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->onUrlEditModeFinished()V

    return-void
.end method

.method public onUrlEditModeStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->onUrlEditModeStarted()V

    return-void
.end method

.method public reload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->reload()V

    return-void
.end method

.method public requestFocusDown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->requestFocusDown()Z

    move-result p0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->setBitmapCaptureCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;->mQuickAccessPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->setListener(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;)V

    return-void
.end method
