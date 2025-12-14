.class public Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mButtonContainer:Landroid/view/View;

.field private mComponentName:Landroid/content/ComponentName;

.field private mDialog:Lm/l;

.field private mIsErasing:Z

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mProgressBarLayout:Landroid/widget/FrameLayout;

.field private mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mSnackbar:LH6/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mIsErasing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mComponentName:Landroid/content/ComponentName;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private clearUserData()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->showProgressBar()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->getInstance()Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;

    move-result-object v3

    invoke-static {v0, v1, v2, v1, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->createTermsForSiActivatedLogging(Landroid/content/Context;JJ)Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getEnabledServiceIds()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/r;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/r;-><init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;->deactivated(Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging$Terms;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private exitMultiWindowModeIfNeeded(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const-string v1, "LeaveInternetFragment"

    if-eqz v0, :cond_0

    const-string p0, "Do not exit multi window mode in GED device"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->exitMultiWindowMode(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoActivity;->semExitMultiWindowMode(Landroid/app/Activity;)Z
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exitMultiWindowMode() failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->moveOtherTasksToBack(I)V

    return-void
.end method

.method private getEnabledServiceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "36"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getLinkedText(Landroid/app/Activity;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 3

    const-string v0, "%1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ""

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/app/Activity;)V

    const/16 p0, 0x21

    invoke-virtual {v2, p2, v0, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method private hideProgressBar()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mIsErasing:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mProgressBarLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->finishTouchOutsideNeeded(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->requestSystemKeyEvent(Z)V

    return-void
.end method

.method public static synthetic i(Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$onCreateView$2(Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f140ee8

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->showMessage(I)V

    const-string v0, "LeaveInternetFragment"

    const-string v1, "network not available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c8d

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140c30

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isNoticePpCountry()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isGDPR()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isBrazil()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$showDiscontinueDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$clearUserData$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$onRemoveSuccess$6()V

    return-void
.end method

.method private synthetic lambda$clearUserData$5(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->onRemoveSuccess()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->onRemoveFailed()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->onDiscontinueUseButtonClicked()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    invoke-static {p5}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p3

    or-int/2addr p3, p4

    const/16 p4, 0x13

    if-eq p3, p4, :cond_4

    const/16 p1, 0x14

    const/4 p4, 0x1

    if-eq p3, p1, :cond_2

    const/16 p1, 0x42

    if-eq p3, p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->startClearBrowsingData()V

    return p4

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    :cond_3
    return p4

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return v0
.end method

.method private static synthetic lambda$onCreateView$2(Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onRemoveSuccess$6()V
    .locals 2

    const-string v0, "Clear app data"

    const-string v1, "LeaveInternetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->hideProgressBar()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Application context is null, clear data failed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, "clearApplicationUserData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    return-void
.end method

.method private synthetic lambda$showDiscontinueDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140c8b

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showDiscontinueDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140c8c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->clearUserData()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$showDiscontinueDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->lambda$onCreateView$1(Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mButtonContainer:Landroid/view/View;

    return-object p0
.end method

.method private onDiscontinueUseButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mDialog:Lm/l;

    const-string v1, "LeaveInternetFragment"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onDiscontinueUseButtonClicked() Dialog is already showing, return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f140c8a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mIsErasing:Z

    if-eqz v0, :cond_2

    const-string p0, "onDiscontinueUseButtonClicked() Erasing server data, return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->showDiscontinueDialog()V

    return-void
.end method

.method private onRemoveFailed()V
    .locals 4

    const-string v0, "LeaveInternetFragment"

    const-string v1, "onRemoveFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140c8d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140c31

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->hideProgressBar()V

    const v0, 0x7f140ee9

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->showMessage(I)V

    return-void
.end method

.method private onRemoveSuccess()V
    .locals 4

    const-string v0, "LeaveInternetFragment"

    const-string v1, "onRemoveSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->exitMultiWindowModeIfNeeded(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->hideProgressBar()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "onRemoveSuccess() move task to back"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_0
    const-string v1, "onRemoveSuccess() move all tasks to back"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->moveAllTasksToBack()V

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/T;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/T;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->startClearBrowsingData()V

    return-void
.end method

.method private requestSystemKeyEvent(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mComponentName:Landroid/content/ComponentName;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mComponentName:Landroid/content/ComponentName;

    const/16 v1, 0xbb

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestSystemKeyEvent() failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "LeaveInternetFragment"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private setTitle()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getLeaveInternetTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showDiscontinueDialog()V
    .locals 3

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1502e8

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140ee4

    goto :goto_0

    :cond_0
    const v1, 0x7f140ee3

    :goto_0
    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140ee2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->isNoticePpCountry()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f140ee1

    goto :goto_1

    :cond_2
    const v1, 0x7f140ee0

    :goto_1
    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/q;-><init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;I)V

    const v2, 0x7f1402ac

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/q;-><init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;I)V

    const v2, 0x7f140ee5

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showMessage(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mSnackbar:LH6/o;

    if-eqz v0, :cond_1

    invoke-static {}, Lo3/n;->u()Lo3/n;

    move-result-object v1

    iget-object v0, v0, LH6/m;->u:LH6/j;

    iget-object v2, v1, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, v0}, Lo3/n;->v(LH6/j;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mSnackbar:LH6/o;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LH6/m;->b(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mSnackbar:LH6/o;

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method private showProgressBar()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mIsErasing:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mProgressBarLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->requestSystemKeyEvent(Z)V

    return-void
.end method

.method private startClearBrowsingData()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140c8e

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c8f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "531"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const p1, 0x7f1402f0

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mIsErasing:Z

    if-eqz v0, :cond_0

    const-string p0, "LeaveInternetFragment"

    const-string v0, "onBackPressed() Erasing server data, return"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p3

    const v0, 0x7f0e0493

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0690

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0b068d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140edd

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140edc

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b068e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%1$s"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f140954

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%2$s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f140edf

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const v2, 0x7f140ede

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f0b01bd

    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0e0492

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mButtonContainer:Landroid/view/View;

    const v2, 0x7f0b068b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f140edb

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/d;

    const/4 v1, 0x1

    invoke-direct {p3, v1, p0}, Lcom/sec/android/app/sbrowser/settings/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mButtonContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/o;

    invoke-direct {p3, p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/o;-><init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/p;

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0}, Lcom/sec/android/app/sbrowser/settings/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f0b0929

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mProgressBarLayout:Landroid/widget/FrameLayout;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->mDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->setTitle()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSetting(Landroid/content/Intent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->exitMultiWindowModeIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->setTitle()V

    return-void
.end method
