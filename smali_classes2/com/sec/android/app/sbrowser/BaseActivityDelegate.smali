.class public Lcom/sec/android/app/sbrowser/BaseActivityDelegate;
.super Lcom/sec/terrace/TerraceActivityDelegate;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/TerraceActivityDelegate;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/BaseActivityDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;->lambda$onNativeInitializationSuccess$0()V

    return-void
.end method

.method private synthetic lambda$onNativeInitializationSuccess$0()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->getActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    return-void
.end method


# virtual methods
.method public initializeBluetoothDialogHelpers()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->getInstance()Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothDeviceChooserDelegateImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper;->setDelegate(Lcom/sec/terrace/browser/TerraceBluetoothDeviceChooserHelper$BluetoothDeviceChooserDelegate;)V

    invoke-static {}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->getInstance()Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptDelegate;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPromptDelegate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper;->setDelegate(Lcom/sec/terrace/browser/device_dialog/TerraceBluetoothScanningPermissionDialogHelper$Delegate;)V

    return-void
.end method

.method public initializeProtectedBrowsing()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->initialize()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 3

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivityDelegate;->onNativeInitializationSuccess()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;->initializeProtectedBrowsing()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;->initializeBluetoothDialogHelpers()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onActivityLaunched()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LG6/e;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivityDelegate;->mActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->getInstance()Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/NetworkNotificationScheduler;->setObserver()V

    :cond_0
    return-void
.end method
