.class public Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

.field private mDidMainSwitchInit:Z

.field private mEmptyView:Landroid/view/View;

.field private mHistoryModel:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;

.field private mIsPopOver:Z

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mMainView:Landroid/view/View;

.field mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/c;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->lambda$setListData$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;Landroidx/fragment/app/J;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->lambda$showOpenDialog$2(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private initArguments()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "extra_pkg_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mPackageName:Ljava/lang/String;

    const-string v1, "extra_is_popover"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mIsPopOver:Z

    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x7f0e0467

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0b0629

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0b062b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainView:Landroid/view/View;

    const p2, 0x7f0b06c5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/e;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/e;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->updateData()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->lambda$initView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->lambda$showOpenDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mDidMainSwitchInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->setBlocked(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->requestNotificationPermission(Landroid/app/Activity;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140c58

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    const-string p2, "On"

    goto :goto_0

    :cond_2
    const-string p2, "Off"

    :goto_0
    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListData$3(Landroid/view/View;)V
    .locals 0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->onItemClick(Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;)V

    return-void
.end method

.method private synthetic lambda$showOpenDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140c55

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showOpenDialog$2(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->getScreenID()Ljava/lang/String;

    move-result-object p3

    const p4, 0x7f140c56

    invoke-virtual {p0, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.sec.android.app.sbrowser.beta.INTENT_ACTION_INTERNAL_LOADING"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "create_new_tab"

    const/4 p4, 0x1

    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "com.android.browser.application_id"

    const-string p4, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAppSetting()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-static {v1}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mIsPopOver:Z

    if-eqz p0, :cond_1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showOpenDialog(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f140639

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<b>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lm/k;

    const v3, 0x7f1501c5

    invoke-direct {v2, v0, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iget-object v3, v2, Lm/k;->a:Lm/h;

    iput-object v1, v3, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/d;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;)V

    const v3, 0x7f1402ac

    invoke-virtual {v2, v3, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/global_config/d;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/sec/android/app/sbrowser/global_config/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f1402ad

    invoke-virtual {v1, p0, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateData()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mPackageName:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/b;-><init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;->getListData(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel$Listener;)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c57

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "540"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f140643

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mHistoryModel:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->addObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->initArguments()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mObserver:Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->removeObserver(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler$Observer;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c54

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->showOpenDialog(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryItemView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140c53

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->showAppSetting()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071354

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    xor-int/2addr p1, v1

    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->updateData()V

    return-void
.end method

.method public setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->getBlocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mDidMainSwitchInit:Z

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v3, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b0625

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAppInfoView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b0627

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12002e

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12002d

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0b0628

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12002f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0b0626

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryAdapter;->setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_5
    return-void
.end method
