.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig;->updateConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig$1;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfig$1;->lambda$onFetched$0(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onFetched$0(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "onFetched data : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtNavHandlerConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "external_navigation_config.json"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->loadDataFromConfig()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const/16 p0, 0x130

    const-string p1, "ExtNavHandlerConfig"

    if-ne p2, p0, :cond_0

    const-string p0, "onFail by Http Not Modified"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "onFailed"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->clearAccessListConfig()V

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
