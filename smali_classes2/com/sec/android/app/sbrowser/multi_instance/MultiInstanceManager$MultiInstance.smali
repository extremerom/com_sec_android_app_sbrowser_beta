.class Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiInstance"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mFullScreenManager:Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

.field private final mInstanceId:I

.field private final mIsDesktopMode:Z

.field private mIsRecreating:Z

.field private mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mIsRecreating:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->generateInstanceId(Landroid/app/Activity;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mInstanceId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mIsDesktopMode:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mFullScreenManager:Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;-><init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mFullScreenManager:Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mInstanceId:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mFullScreenManager:Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;->destroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mInstanceId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->clearInstanceId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getInstanceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mInstanceId:I

    return p0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-object p0
.end method

.method public isDesktopMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mIsDesktopMode:Z

    return p0
.end method

.method public isRecreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mIsRecreating:Z

    return p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fullscreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_hide_status_bar_no_cutout"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->isTheFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance$1;-><init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;Landroid/app/Activity;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setRecreating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mIsRecreating:Z

    return-void
.end method

.method public setTabManager(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$MultiInstance;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    return-void
.end method
