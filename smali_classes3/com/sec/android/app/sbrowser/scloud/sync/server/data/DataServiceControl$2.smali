.class Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->readRecords(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$fd:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$tableName:Ljava/lang/String;

.field final synthetic val$tableVer:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$cid:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$tableName:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$tableVer:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 4

    const-string p1, "--"

    const-string v0, "\r\n"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readRecords Finished - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataServiceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    const-string v3, "1QAZXSW2"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v2, "cid:"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$cid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v2, "tableName:"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v2, "tableVersion:"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    iget p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$2;->val$tableVer:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_LOCAL_IO:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
.end method
