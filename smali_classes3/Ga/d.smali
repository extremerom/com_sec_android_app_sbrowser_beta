.class public final synthetic LGa/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LGa/d;->a:I

    iput-object p2, p0, LGa/d;->b:Ljava/lang/Object;

    iput-object p3, p0, LGa/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;LJ2/k0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LGa/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGa/d;->c:Ljava/lang/Object;

    iput-object p2, p0, LGa/d;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 6

    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/lib/setting/p;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    const-string v1, "loadPolicy: "

    const-string v2, "SyncPerformancePolicyManager"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "loadPolicy start : com.sec.android.app.sbrowser.beta"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/scloud/lib/setting/o;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/samsung/android/scloud/lib/setting/o;->b:Lcom/samsung/android/scloud/lib/setting/n;

    sget-object v4, Lcom/samsung/android/scloud/lib/setting/m;->Loading:Lcom/samsung/android/scloud/lib/setting/m;

    iput-object v4, v3, Lcom/samsung/android/scloud/lib/setting/n;->d:Lcom/samsung/android/scloud/lib/setting/m;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "authority"

    const-string v4, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "library_version"

    const-wide/16 v4, 0x4eca

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "is_sync_setting_required"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    const-string v4, "get_performance_policy"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/scloud/lib/setting/p;->b(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/setting/n;

    move-result-object v0

    const-string v2, "SyncPerformancePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SyncPerformancePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadPolicy error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/n;

    invoke-direct {v0}, Lcom/samsung/android/scloud/lib/setting/n;-><init>()V

    sget-object v1, Lcom/samsung/android/scloud/lib/setting/m;->NotLoaded:Lcom/samsung/android/scloud/lib/setting/m;

    iput-object v1, v0, Lcom/samsung/android/scloud/lib/setting/n;->d:Lcom/samsung/android/scloud/lib/setting/m;

    sget-object v1, Lcom/samsung/android/scloud/lib/setting/o;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sput-object v0, Lcom/samsung/android/scloud/lib/setting/o;->b:Lcom/samsung/android/scloud/lib/setting/n;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/o;->b:Lcom/samsung/android/scloud/lib/setting/n;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const-string p0, "SyncPerformancePolicyManager"

    const-string v0, "loadPolicy completed : com.sec.android.app.sbrowser.beta"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LGa/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Configuration;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->a(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;Landroid/content/res/Configuration;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->a(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/CheckBox;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;->b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKVKKView;Landroid/widget/CheckBox;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/CheckBox;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;->b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLegalKRView;Landroid/widget/CheckBox;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->b(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->a(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Landroid/os/Bundle;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->e(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->f(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;->b(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarManager;Lcom/sec/android/app/sbrowser/tab/Tab;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->a(Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;Ljava/util/List;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->b(Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;->c(Lcom/sec/android/app/sbrowser/barcode_detect/DeepskyBarcodeProcessor;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->P(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->q(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void

    :pswitch_e
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->a(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void

    :pswitch_f
    invoke-direct {p0}, LGa/d;->a()V

    return-void

    :pswitch_10
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, LR5/i;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/n;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/n;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, LR5/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, LR5/i;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_11
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, LR5/i;

    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:LO9/a;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LR5/i;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, LR5/i;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_12
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/p;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, LC7/a;

    monitor-enter v0

    :try_start_2
    iget-object v1, v0, Lcom/google/firebase/components/p;->b:Ljava/util/Set;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/firebase/components/p;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/components/p;->b:Ljava/util/Set;

    invoke-interface {p0}, LC7/a;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_13
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/q;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, LC7/a;

    iget-object v1, v0, Lcom/google/firebase/components/q;->b:LC7/a;

    sget-object v2, Lcom/google/firebase/components/q;->d:Lcom/google/firebase/components/f;

    if-ne v1, v2, :cond_1

    monitor-enter v0

    :try_start_4
    iget-object v1, v0, Lcom/google/firebase/components/q;->a:LA9/b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/firebase/components/q;->a:LA9/b;

    iput-object p0, v0, Lcom/google/firebase/components/q;->b:LC7/a;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_14
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lk9/r;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Lk9/n;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$Companion;->a(Lk9/r;Lk9/n;)V

    return-void

    :pswitch_15
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/J;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/A;

    invoke-static {v0, p0}, Landroidx/activity/p;->access$addObserverForBackInvoker(Landroidx/activity/p;Landroidx/activity/A;)V

    return-void

    :pswitch_16
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, LW0/b;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, LW0/b;->k(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_17
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobParameters;

    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_18
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->E0:Le1/d;

    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020044

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, LJ6/k;

    invoke-virtual {p0, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p0}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    return-void

    :pswitch_19
    iget-object v0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast p0, LJ2/k0;

    :try_start_6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {p0}, LJ2/k0;->a()V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {p0}, LJ2/k0;->a()V

    throw v0

    :pswitch_1a
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, LI/j;

    iget-object v0, v0, LI/j;->b:Ljava/util/HashMap;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1b
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/web_dark_mode_brightness/WebDarkModeBrightnessPromotion;->a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V

    return-void

    :pswitch_1c
    iget-object v0, p0, LGa/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    iget-object p0, p0, LGa/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;->a(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method
