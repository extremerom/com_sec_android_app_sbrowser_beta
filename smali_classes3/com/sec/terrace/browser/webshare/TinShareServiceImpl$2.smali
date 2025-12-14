.class Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->share(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/webshare/mojom/SharedFile;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;

.field final synthetic val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

.field final synthetic val$files:[Lorg/chromium/webshare/mojom/SharedFile;

.field final synthetic val$innerCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

.field final synthetic val$terraceListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$trackingFreeText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;Lorg/chromium/webshare/mojom/ShareService$Share_Response;[Lorg/chromium/webshare/mojom/SharedFile;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->this$0:Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;

    iput-object p2, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    iput-object p3, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    iput-object p4, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$terraceListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    iput-object p5, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$trackingFreeText:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$innerCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/webshare/mojom/ShareService$Share_Response;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/webshare/mojom/SharedFile;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Z)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->lambda$doInBackground$0(Lorg/chromium/webshare/mojom/ShareService$Share_Response;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/webshare/mojom/SharedFile;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Z)V

    return-void
.end method

.method private static synthetic lambda$doInBackground$0(Lorg/chromium/webshare/mojom/ShareService$Share_Response;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/webshare/mojom/SharedFile;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Z)V
    .locals 6

    if-nez p7, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void

    :cond_0
    invoke-static {p4}, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->commonMimeType([Lorg/chromium/webshare/mojom/SharedFile;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/TerraceListenerCallback;->showShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 13

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    array-length v0, v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    array-length v0, v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->getSharedFilesDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to create directory for shared file."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    const/4 v9, 0x0

    move v1, v9

    :goto_1
    iget-object v2, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const-string v2, "share"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/chromium/webshare/mojom/SharedFile;->name:Lorg/chromium/mojo_base/mojom/SafeBaseName;

    iget-object v4, v4, Lorg/chromium/mojo_base/mojom/SafeBaseName;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget-object v4, v4, Lorg/chromium/mojo_base/mojom/FilePath;->path:Ljava/lang/String;

    invoke-static {v4}, Lorg/chromium/base/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/FileProviderUtils;->getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/32 v10, 0x3200000

    invoke-direct {v3, v4, v10, v11}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;-><init>(Ljava/io/OutputStream;J)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v1, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    iget-object v2, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$terraceListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    iget-object v3, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$trackingFreeText:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    iget-object v7, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$innerCallback:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    new-instance v12, Lcom/sec/terrace/browser/webshare/b;

    move-object v0, v12

    invoke-direct/range {v0 .. v7}, Lcom/sec/terrace/browser/webshare/b;-><init>(Lorg/chromium/webshare/mojom/ShareService$Share_Response;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/webshare/mojom/SharedFile;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    invoke-direct {v10, v11, v12}, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;-><init>(ILcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;

    iget-object v1, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$files:[Lorg/chromium/webshare/mojom/SharedFile;

    aget-object v1, v1, v9

    iget-object v1, v1, Lorg/chromium/webshare/mojom/SharedFile;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    iget-object v1, v1, Lorg/chromium/blink/mojom/SerializedBlob;->blob:Lorg/chromium/blink/mojom/Blob;

    invoke-virtual {v0, v1, v10}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->start(Lorg/chromium/blink/mojom/Blob;Lorg/chromium/base/Callback;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :goto_3
    const-string v0, "TinShareServiceImpl"

    const-string v1, "Error creating shared file"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
