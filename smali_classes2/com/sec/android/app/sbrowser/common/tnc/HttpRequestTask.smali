.class abstract Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;
.super Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public request(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v6, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;

    const-string v2, "GET"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask$1;-><init>(Lcom/sec/android/app/sbrowser/common/tnc/HttpRequestTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->TNC:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p0, v6, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "url is malformed : "

    const-string v0, "HttpRequestTask"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
