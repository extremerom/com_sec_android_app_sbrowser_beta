.class public Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mLangPackReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mTalkbackReceiver:Landroid/content/BroadcastReceiver;

.field private mThemeApplyStartReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/MainView;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$1;-><init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;Lcom/sec/android/app/sbrowser/main_view/MainView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$2;-><init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mThemeApplyStartReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$3;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$3;-><init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;Lcom/sec/android/app/sbrowser/main_view/MainView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mTalkbackReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;

    invoke-direct {p1, p0, p4, p3}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;-><init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver;

    new-instance p2, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$5;-><init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mLangPackReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->clearBrowsingData()V

    return-void
.end method

.method private clearBrowsingData()V
    .locals 9

    new-instance v0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$6;-><init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    return-void
.end method

.method private registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BroadcastReceiverHelper"

    const-string p1, "IllegalArgumentException during unregisterReceiver"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public registerReceiver()V
    .locals 2

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mThemeApplyStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "com.samsung.settings.action.talkback_toggled"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mTalkbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mLangPackReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mThemeApplyStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mTalkbackReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->mLangPackReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
