.class public Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
.super Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;,
        Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarAnimationListener;
    }
.end annotation


# instance fields
.field private mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

.field private mDestroyed:Z

.field private final mInfoBarDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/infobars/InfoBar;",
            ">;"
        }
    .end annotation
.end field

.field private mParentView:Landroid/view/ViewGroup;

.field private mSecurityDelegate:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBarDelegates:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mParentView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->initInfoBarContainer()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->createInfoBarContainer()V

    return-void
.end method

.method private addInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V
    .locals 2

    const-string v0, "InfoBarContainer"

    const-string v1, "addInfoBarInternal infobar added"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->setInfoBarContainer(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onAttach()Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->replaceView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addToParentView()V

    return-void
.end method

.method private addListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    return-void
.end method

.method private addToParentView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mParentView:Landroid/view/ViewGroup;

    invoke-super {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->addToParentView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private adjustInfoBarHeight()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/infobars/b;-><init>(Landroid/view/ViewGroup;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getResources()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$ConfirmInfoBarResources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/protected_browsing/TerraceNavigationWarningInfoBarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/protected_browsing/TerraceNavigationWarningInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/protected_browsing/AbnormalNavigationWarningInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->create(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method private createInfoBarContainer()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->lambda$adjustInfoBarHeight$1()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->lambda$initInfoBarContainer$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private getInfoBarByInfoBarDelegate(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->createInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object p0

    return-object p0
.end method

.method private initInfoBarContainer()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->setPadding()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/a;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private synthetic lambda$adjustInfoBarHeight$1()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->adjustInfoBarHeight(Z)V

    return-void
.end method

.method private synthetic lambda$initInfoBarContainer$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-ne p8, p4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->setPadding()V

    return-void
.end method

.method private removeInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onDetach()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;)V

    return-void
.end method

.method private removeListener()V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method private setLayoutParams(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-ne p2, v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq p1, v1, :cond_2

    :cond_1
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setPadding()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070672

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070673

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070674

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "InfoBarContainer"

    const-string v1, "addInfoBar with infoBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public addInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const-string v3, "InfoBarContainer"

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isHelpIntroRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "helpIntro is running. return false"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->getInfoBarByInfoBarDelegate(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "addInfoBar with delegate"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBarDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addListener()V

    return v2

    :cond_4
    invoke-virtual {p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;->getInfoBarType()I

    move-result v0

    if-ne v0, v2, :cond_5

    instance-of v0, p1, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/permissions/TerracePermissionInfoBarDelegate;->getPermissionType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mSecurityDelegate:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;->needToCheckPushPopup()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mSecurityDelegate:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;->checkPushPopup(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return v2

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->createInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    return v2
.end method

.method public adjustInfoBarContainer(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->setLayoutParams(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public adjustInfoBarHeight(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07023a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq p1, v1, :cond_1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public changeInfoBarParent(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->removeFromParentView()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public handleBottomOffsetsForFullscreenChanged(IF)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->setLayoutParams(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleBottomOffsetsForFullscreenChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InfoBarContainer"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public handleOffsetsForFullscreenChanged(IIF)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->setLayoutParams(II)V

    if-eqz p1, :cond_0

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    mul-float/2addr p3, v0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    :cond_0
    const-string v0, "handleOffsetsForFullscreenChanged : "

    const-string v1, ", "

    invoke-static {p1, p2, v0, v1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InfoBarContainer"

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public notifyInfoBarViewChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mContainerLayout:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->notifyInfoBarViewChanged()V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBarDelegates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->createInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->adjustInfoBarHeight()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBarDelegates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeListener()V

    :cond_3
    return-void
.end method

.method public onLoadStarted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onLoadStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    const-string v1, "InfoBarContainer"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "removeInfoBar with infoBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "removeInfoBar Destoryed= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " infoBar="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mInfoBars contains="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public removeInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mDestroyed:Z

    const/4 v1, 0x0

    const-string v2, "InfoBarContainer"

    if-eqz v0, :cond_0

    const-string p0, "removeInfoBar already destroyed"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->getInfoBarByInfoBarDelegate(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "removeInfoBar InofBar is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBarDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBarDelegates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return v1

    :cond_2
    const-string p1, "removeInfoBar with delegate"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBarInternal(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setSecurityDelegate(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mSecurityDelegate:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;

    return-void
.end method

.method public updateSavePasswordInfoBar()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->mInfoBars:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->updateLayout()V

    :cond_1
    return-void
.end method
