.class Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/FileResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->downloadItem(Ljava/util/List;ZII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;Ljava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/FileResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(JLjava/io/InputStream;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string p4, ", file : "

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleFileStringResponse Finished - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ORSServiceControl"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;)V

    invoke-static {p3, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/sec/android/app/sbrowser/scloud/sync/common/SCProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "downloadFile fileWrite Finished - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object p3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-interface {p3, p4, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$fileName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "downloadFile fileWrite err - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-interface {p4, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getLocalFilePathPrefix(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$12;->val$fileName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_FILE_WRITE_ERR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p0
.end method
