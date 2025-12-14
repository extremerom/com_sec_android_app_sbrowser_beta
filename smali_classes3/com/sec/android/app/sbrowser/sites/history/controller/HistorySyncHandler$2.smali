.class Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->initHistoryListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

.field final synthetic val$mutex:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;->val$mutex:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "[HistorySync]HistorySyncHandler"

    const-string v1, "initializeAsync onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;->val$mutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "[HistorySync]HistorySyncHandler"

    const-string v1, "initializeAsync onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->h(Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler$2;->val$mutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
