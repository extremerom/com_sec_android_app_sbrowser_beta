.class public final synthetic Lcom/google/firebase/messaging/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/d;
.implements LE4/d;
.implements Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;
.implements Le1/e;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/terrace/TerraceJavaScriptCallback;
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/messaging/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LI7/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/firebase/messaging/o;->a:LZ3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, LZ3/x;->q(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public c(LA7/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(LA7/c;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method public createStub(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iget p0, p0, Lcom/google/firebase/messaging/m;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/visual/ai/sdkcommon/q;->a:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.visual.ai.sdkcommon.IImageEditorService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/samsung/android/visual/ai/sdkcommon/r;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/visual/ai/sdkcommon/r;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/visual/ai/sdkcommon/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/visual/ai/sdkcommon/p;->a:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :pswitch_0
    sget p0, Lc8/b;->a:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "com.samsung.android.aicore.sdkcommon.IOnDeviceService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v0, p0, Lc8/c;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lc8/c;

    goto :goto_1

    :cond_3
    new-instance v0, Lc8/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lc8/a;->a:Landroid/os/IBinder;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/firebase/messaging/m;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;->a()Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;-><init>()V

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->a()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->a()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->a()Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;-><init>()V

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->a()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;-><init>()V

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->b()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->a()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->a()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->d()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;-><init>()V

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;-><init>()V

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->a()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->a()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->a()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->a()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner$Companion;->a()Lcom/samsung/android/vexfwk/docscan/VexFwkDocRefinerCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;->b()Lcom/samsung/android/vexfwk/param/VexFwkDocumentScanRect;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->j()Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/google/firebase/messaging/m;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->e(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->f(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAntiAdblockAvoidanceEnabled(Z)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->b(Z)Z

    move-result p0

    return p0
.end method
