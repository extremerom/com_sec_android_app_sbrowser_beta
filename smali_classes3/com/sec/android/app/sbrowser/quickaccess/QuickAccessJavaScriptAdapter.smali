.class public Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;
.super Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;
    }
.end annotation


# instance fields
.field private mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

.field private mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

.field private mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

.field private mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LZ3/x;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;-><init>()V

    invoke-direct {p2, p1, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V

    const-class p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p2, p1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    return-void
.end method

.method private convertSILogParametersToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sendSILog - wrong parameters : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private convertToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "data:image/png;base64,"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->lambda$onLifecycleReady$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V

    return-void
.end method

.method private dismissAddDialog()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessAddWebEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->dismissAddShortcutDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private dismissAddShortcutDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->lambda$onLifecycleReady$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->lambda$onLifecycleReady$0(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onQuickAccessUIEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->lambda$enterEditMode$3()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onMainUIEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->updatePrivacyBoardFeaturesActiveStateList(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onPrivacyDashboardVisibilityChanged(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onThemeChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$enterEditMode$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->enterEditMode()V

    return-void
.end method

.method private synthetic lambda$onLifecycleReady$0(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onPrivacyDashboardUpdated()V

    return-void
.end method

.method private synthetic lambda$onLifecycleReady$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onPromotionStatusUpdated()V

    return-void
.end method

.method private synthetic lambda$onLifecycleReady$2(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->updateEditButtonState()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    return-object p0
.end method

.method private onMainUIEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getId()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 p1, 0x8

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->launchQuickAccessSettings()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showDeletedToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showItemAlreadyExisted(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showInvalidUrlToast(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showMaxItemsToast(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showShortcutSavedToast(Landroid/content/Context;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private onPrivacyDashboardVisibilityChanged(Z)V
    .locals 3

    const-string v0, "onPrivacyDashboardVisibilityChanged"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onPrivacyDashboardVisibilityChanged - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->clearTurnOnClickedFlag()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->updatePrivacyDashboardMessage(Z)V

    return-void
.end method

.method private onQuickAccessUIEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;->getId()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->dismissAddDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->getItem()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onShowRenameDialogReceived(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onShowAddDialogReceived()V

    :cond_5
    :goto_0
    return-void
.end method

.method private onShowAddDialogReceived()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessAddWebEnabled()Z

    move-result v0

    const-string v1, "QuickAccessJavaScriptAdapter"

    if-eqz v0, :cond_0

    const-string v0, "isQuickAccessAddWebEnabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onShowAddShortcutDialogReceived()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "showAddDialog - dialog is showing!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->show(Lm/n;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string p0, "showAddDialog - activity is empty!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onShowAddShortcutDialogReceived()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->shouldShowSyncAddShortcutsButton(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessAddShortcut(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->isShowing()Z

    move-result v0

    const-string v1, "QuickAccessJavaScriptAdapter"

    if-eqz v0, :cond_2

    const-string p0, "showAddShortcutDialog - dialog is showing!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddShortcutDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddShortcutDialogFragment;->show(Lm/n;)V

    goto :goto_0

    :cond_3
    const-string p0, "showAddShortcutDialog - activity is empty!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onShowRenameDialogReceived(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lm/n;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->show(Lm/n;Landroid/view/View;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;)V

    return-void
.end method

.method private onThemeChanged(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->notifyDbUpdated()V

    return-void
.end method

.method private updateEditButtonState()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->setEditButton(Z)V

    :cond_0
    return-void
.end method

.method private updatePrivacyBoardFeaturesActiveStateList(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QuickAccessJavaScriptAdapter"

    const-string v1, "privacy board features active state updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->updatePrivacyDashboardMessage(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public closeDialogIfNecessary()V
    .locals 3

    const-string v0, "closeDialogIfNecessary"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "closeDialogIfNecessary - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onDismissAddDialog()V

    return-void
.end method

.method public deleteItems(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "deleteItems"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "deleteItems - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->deleteQuickAccessItems(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->destroy()V

    return-void
.end method

.method public enterEditMode()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "QuickAccessJavaScriptAdapter"

    const-string v1, "enterEditMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "enterEditMode - domain isn\'t matched!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public enterPrivacyBoard()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "enterPrivacyBoard"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "enterPrivacyBoard - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onClickPrivacyBoard(Landroid/content/Context;)V

    return-void
.end method

.method public getGuiVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "getGuiVersion"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "getGuiVersion - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "v1"

    return-object p0
.end method

.method public getItems()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "getItems"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "getItems - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    const-string p0, "getItems - item isn\'t initialized"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getTheme()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getTheme()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v5

    :goto_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "id"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "title"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "unifiedHome"

    invoke-static {v8, v9}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->createItemUrlWithFromIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "link"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "origin_url"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "isServerItem"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v9, v10, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hasValidThemeTouchIcon(Z)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "icon"

    if-eqz v8, :cond_5

    :try_start_1
    invoke-virtual {v6, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getThemeTouchIcon(Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->convertToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_5

    :cond_5
    const-string v8, ""

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v8, "color"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDominantColor()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "firstletter"

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrivacyDashboardData()Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "getPrivacyDashboardData"

    const-string v4, "QuickAccessJavaScriptAdapter"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string p0, "getPrivacyDashboardData - domain isn\'t matched!"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPrivacyDashboardMessage()Landroidx/lifecycle/S;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    if-nez v3, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->isFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, v2, :cond_3

    if-eq v6, v1, :cond_2

    goto :goto_0

    :cond_2
    const v6, 0x7f140b70

    goto :goto_1

    :cond_3
    const v6, 0x7f140b6f

    goto :goto_1

    :cond_4
    const v6, 0x7f140b72

    goto :goto_1

    :cond_5
    :goto_0
    const v6, 0x7f140b71

    :goto_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "title"

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "feature_enabled"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPrivacyBoardVisibility()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v7, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "text"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v1, v1, [Ljava/io/Serializable;

    aput-object v8, v1, v0

    aput-object v9, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "turn_on_button_enabled"

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->isFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    invoke-virtual {v7, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "activity_open_type"

    invoke-virtual {v7, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "getPrivacyDashboardData - failed to create json object"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public getPromotionUrl()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "getPromotionUrl"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "getPromotionUrl - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPromotionStatus()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;->component2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNightModeEnabled()Z
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isUseWebsiteDarkThemeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getTheme()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public isPrivacyBoardEnabled()Z
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "isPrivacyBoardEnabled"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "isPrivacyBoardEnabled - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isPrivacyBoardEnabled()Z

    move-result p0

    return p0
.end method

.method public isPromotionEnabled()Z
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "isPromotionEnabled"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "isPromotionEnabled - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPromotionStatus()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;->component1()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "5510"

    const-string v1, "QAWeb"

    const-string v2, "201"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method public isRefererCleanerEnabled()Z
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "isRefererCleanerEnabled"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "isRefererCleanerEnabled - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSecretMode()Z
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->isIncognitoMode()Z

    move-result p0

    return p0
.end method

.method public isSetAsHomePage()Z
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "isSetAsHomePage"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "isSetAsHomePage - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "quick_access"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public launchQuickAccessSettings()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessSettings(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V

    return-void
.end method

.method public notifyDbUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    const-string v0, "javascript:JSFunctionInterface(\'dbUpdated\');"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->loadJavaScriptUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLifecycleReady()V
    .locals 3

    const-string v0, "QuickAccessJavaScriptAdapter"

    const-string v1, "Lifecycle is Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getQuickAccessUIEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getThemeLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPrivacyDashboardMessage()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPrivacyBoardVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPrivacyBoardFeaturesActiveStateList()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->getPromotionStatus()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getOwner()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/a;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public onPrivacyDashboardUpdated()V
    .locals 2

    const-string v0, "QuickAccessJavaScriptAdapter"

    const-string v1, "onPrivacyDashboardUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    const-string v0, "javascript:JSFunctionInterface(\'privacyStatusUpdated\');"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->loadJavaScriptUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPromotionClick()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "onPromotionClick"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPromotionClick - domain isn\'t matched!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onPromotionClick()V

    const-string p0, "5512"

    const-string v0, "QAWeb"

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPromotionClose()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "onPromotionClose"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPromotionClose - domain isn\'t matched!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onPromotionClick()V

    const-string p0, "5511"

    const-string v0, "QAWeb"

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPromotionStatusUpdated()V
    .locals 2

    const-string v0, "QuickAccessJavaScriptAdapter"

    const-string v1, "onPromotionStatusUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    const-string v0, "javascript:JSFunctionInterface(\'promotionStatusUpdated\');"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->loadJavaScriptUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onQuickAccessListUpdated(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->notifyDbUpdated()V

    return-void
.end method

.method public requestPrivacyDashboardData()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "requestPrivacyDashboardData"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "requestPrivacyDashboardData - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->readyToLoadJavaScript()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->updatePrivacyDashboardMessage(Z)V

    return-void
.end method

.method public sendSILog(ILjava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "sendSILog"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "sendSILog - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->sendSILog(ILjava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public sendSILog(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "sendSILog"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "sendSILog - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->convertSILogParametersToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->sendSILog(ILjava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public setAddDialogForTest(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mAddDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AddDialogFragment;

    return-void
.end method

.method public setRenameDialogForTest(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    return-void
.end method

.method public setViewModel(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    return-void
.end method

.method public showAddDialog()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "showAddDialog"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "showAddDialog - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onShowAddDialog()V

    return-void
.end method

.method public showQuickAccessSettings(Z)V
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string p1, "showQuickAccessSettings"

    const-string v0, "QuickAccessJavaScriptAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "showQuickAccessSettings - domain isn\'t matched!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onShowSettings(Landroid/content/Context;)V

    return-void
.end method

.method public showRenameDialog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "showRenameDialog"

    const-string v1, "QuickAccessJavaScriptAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "showRenameDialog - domain isn\'t matched!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onShowRenameDialog(Ljava/lang/String;)V

    return-void
.end method

.method public turnOnPrivacyFeature()V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "QuickAccessJavaScriptAdapter"

    const-string v1, "turnOnPrivacyFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "turnOnPrivacyFeature - domain isn\'t matched!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
