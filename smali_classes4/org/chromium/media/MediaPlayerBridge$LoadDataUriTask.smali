.class Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaPlayerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadDataUriTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mData:Ljava/lang/String;

.field private mTempFile:Ljava/io/File;

.field final synthetic this$0:Lorg/chromium/media/MediaPlayerBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaPlayerBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mData:Ljava/lang/String;

    return-void
.end method

.method private deleteFile()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete temporary file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "decoded"

    const-string v2, "mediadata"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mData:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Landroid/util/Base64InputStream;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/util/Base64InputStream;->close()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :goto_2
    invoke-static {v0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/base/task/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->deleteFile()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    invoke-virtual {v0}, Lorg/chromium/media/MediaPlayerBridge;->getLocalPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->mTempFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->deleteFile()V

    invoke-static {}, Lorg/chromium/media/MediaPlayerBridgeJni;->get()Lorg/chromium/media/MediaPlayerBridge$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaPlayerBridge;->b(Lorg/chromium/media/MediaPlayerBridge;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->this$0:Lorg/chromium/media/MediaPlayerBridge;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/media/MediaPlayerBridge$Natives;->onDidSetDataUriDataSource(JLorg/chromium/media/MediaPlayerBridge;Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaPlayerBridge$LoadDataUriTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
