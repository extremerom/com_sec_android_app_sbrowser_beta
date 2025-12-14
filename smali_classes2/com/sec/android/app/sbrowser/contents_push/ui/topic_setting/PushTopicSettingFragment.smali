.class public Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mIsMoveToNotificationSetting:Z

.field private mLoadingProgressLayout:Landroid/widget/RelativeLayout;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private final mRequestPermissionLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation
.end field

.field private final mTopicPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;",
            ">;"
        }
    .end annotation
.end field

.field private mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    new-instance v0, Landroidx/fragment/app/a0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mRequestPermissionLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method private createTopicPreferences(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const v1, 0x7f1502d6

    if-nez v0, :cond_1

    new-instance v0, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lr/d;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f14039e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/settings/DescriptionPreference;->setTopMarginEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    new-instance v2, Lr/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lr/d;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "topic_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/sec/terrace/browser/autofill/a;

    invoke-direct {v2, p0, v0}, Lcom/sec/terrace/browser/autofill/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->setTopicsPreferenceEnabled(Z)V

    return-void
.end method

.method private createViewModel()V
    .locals 2

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->lambda$createTopicPreferences$3(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->onTopicsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->lambda$onCreateView$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->onTopicsStateChanged(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$createTopicPreferences$3(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    instance-of p2, p2, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->setTopicChecked(Ljava/lang/String;Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mIsMoveToNotificationSetting:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    const p1, 0x7f140c6e

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "On"

    const-string v0, "553"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->setNotificationPermissionRequested()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mRequestPermissionLauncher:Landroidx/activity/result/b;

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->openNotificationSetting(Landroid/app/Activity;Landroidx/activity/result/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mIsMoveToNotificationSetting:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    return-void

    :cond_0
    const p1, 0x7f140c6e

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string v0, "On"

    goto :goto_0

    :cond_1
    const-string v0, "Off"

    :goto_0
    const-string v1, "553"

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->setTopicsPreferenceEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->setMainSwitchChecked(Z)V

    return-void
.end method

.method private synthetic lambda$subscribeObserver$2(Landroidx/lifecycle/J;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->getSyncStatus()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lma/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lma/a;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->getTopics()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lma/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lma/a;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->getTopicsState()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lma/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lma/a;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Landroidx/lifecycle/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->lambda$subscribeObserver$2(Landroidx/lifecycle/J;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->onSyncStatusChanged(Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onSyncStatusChanged(Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->FAILED:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PushTopicSettingFragment"

    const-string v1, "Get push topic list is failed. Show failure UX."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f14039f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->setProgressVisible(Z)V

    return-void
.end method

.method private onTopicsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PushTopicSettingFragment"

    const-string v1, "Push topic list is changed. Create topic preference list."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->createTopicPreferences(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->setListViewVisible(Z)V

    return-void
.end method

.method private onTopicsStateChanged(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->getSyncStatus()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    if-eq v0, v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method private setListViewVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setProgressVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mLoadingProgressLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setTopicsPreferenceEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private storeRegistrationInfo()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "push_settings_entry"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "from"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "push_id"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->setRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private subscribeObserver()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lma/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lma/a;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c6f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "553"

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "contents_push_preference"

    invoke-virtual {p1, v0}, Lw2/F;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->createViewModel()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->storeRegistrationInfo()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw2/F;->a(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mTopicPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    xor-int/2addr p2, p0

    invoke-virtual {p1, p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const p3, 0x7f0e01af

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const p1, 0x7f0b06ae

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mLoadingProgressLayout:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->isTurnOn()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f140a0b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/auth/password/a;

    const/16 v0, 0x9

    invoke-direct {p3, v0, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lw2/A;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "push_settings_entry"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    const-string v0, "period"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->setRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mIsMoveToNotificationSetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mViewModel:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingViewModel;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->mIsMoveToNotificationSetting:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140a0b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->subscribeObserver()V

    return-void
.end method
