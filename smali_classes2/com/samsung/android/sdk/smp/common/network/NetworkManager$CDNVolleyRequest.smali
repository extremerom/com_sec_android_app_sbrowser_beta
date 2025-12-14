.class Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;
.super LN3/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/common/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CDNVolleyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest$DiscFullError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LN3/p;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mFileDest:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mListener:LN3/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN3/s;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LN3/s;LN3/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LN3/s;",
            "LN3/r;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p5}, LN3/p;-><init>(ILjava/lang/String;LN3/r;)V

    const-class p1, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mListener:LN3/s;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mFileDest:Ljava/lang/String;

    return-void
.end method

.method private generateZipFile([B)Ljava/io/File;
    .locals 5

    const-string v0, "File : "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mFileDest:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->TAG:Ljava/lang/String;

    const-string p1, "fail to make dirs"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mFileDest:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-object v2

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p0
.end method

.method private getAvailableStorage()J
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p0

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    return-wide v3
.end method


# virtual methods
.method public deliverResponse(Ljava/io/File;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->mListener:LN3/s;

    check-cast p0, Lcom/android/volley/toolbox/g;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/g;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->deliverResponse(Ljava/io/File;)V

    return-void
.end method

.method public parseNetworkResponse(LN3/k;)LN3/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/k;",
            ")",
            "LN3/t;"
        }
    .end annotation

    iget-object v0, p1, LN3/k;->b:[B

    array-length v1, v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->getAvailableStorage()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest$DiscFullError;-><init>()V

    new-instance p1, LN3/t;

    invoke-direct {p1, p0}, LN3/t;-><init>(LN3/x;)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager$CDNVolleyRequest;->generateZipFile([B)Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, LG5/C;->b(LN3/k;)LN3/b;

    move-result-object p1

    new-instance v0, LN3/t;

    invoke-direct {v0, p0, p1}, LN3/t;-><init>(Ljava/lang/Object;LN3/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, LN3/x;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LN3/x;-><init>(Ljava/lang/String;)V

    new-instance p0, LN3/t;

    invoke-direct {p0, p1}, LN3/t;-><init>(LN3/x;)V

    return-object p0
.end method
