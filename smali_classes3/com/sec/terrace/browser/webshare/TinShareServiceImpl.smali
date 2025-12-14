.class public Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/webshare/mojom/ShareService;


# static fields
.field private static final PERMITTED_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERMITTED_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_RUNNER:Lorg/chromium/base/task/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    const-string v37, "webp"

    const-string v38, "xbm"

    const-string v0, "bmp"

    const-string v1, "css"

    const-string v2, "csv"

    const-string v3, "ehtml"

    const-string v4, "flac"

    const-string v5, "gif"

    const-string v6, "htm"

    const-string v7, "html"

    const-string v8, "ico"

    const-string v9, "jfif"

    const-string v10, "jpeg"

    const-string v11, "jpg"

    const-string v12, "m4a"

    const-string v13, "m4v"

    const-string v14, "mp3"

    const-string v15, "mp4"

    const-string v16, "mpeg"

    const-string v17, "mpg"

    const-string v18, "oga"

    const-string v19, "ogg"

    const-string v20, "ogm"

    const-string v21, "ogv"

    const-string v22, "opus"

    const-string v23, "pjp"

    const-string v24, "pjpeg"

    const-string v25, "png"

    const-string v26, "shtm"

    const-string v27, "shtml"

    const-string v28, "svg"

    const-string v29, "svgz"

    const-string v30, "text"

    const-string v31, "tif"

    const-string v32, "tiff"

    const-string v33, "txt"

    const-string v34, "wav"

    const-string v35, "weba"

    const-string v36, "webm"

    filled-new-array/range {v0 .. v38}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "duplicate element: "

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->PERMITTED_EXTENSIONS:Ljava/util/Set;

    const-string v29, "video/ogg"

    const-string v30, "video/webm"

    const-string v6, "audio/flac"

    const-string v7, "audio/mp3"

    const-string v8, "audio/ogg"

    const-string v9, "audio/wav"

    const-string v10, "audio/webm"

    const-string v11, "audio/x-m4a"

    const-string v12, "image/bmp"

    const-string v13, "image/gif"

    const-string v14, "image/jpeg"

    const-string v15, "image/png"

    const-string v16, "image/svg+xml"

    const-string v17, "image/tiff"

    const-string v18, "image/webp"

    const-string v19, "image/x-icon"

    const-string v20, "image/x-ms-bmp"

    const-string v21, "image/x-xbitmap"

    const-string v22, "text/comma-separated-values"

    const-string v23, "text/css"

    const-string v24, "text/csv"

    const-string v25, "text/html"

    const-string v26, "text/plain"

    const-string v27, "video/mp4"

    const-string v28, "video/mpeg"

    filled-new-array/range {v6 .. v30}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->PERMITTED_MIME_TYPES:Ljava/util/Set;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->createSequencedTaskRunner(I)Lorg/chromium/base/task/SequencedTaskRunner;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->TASK_RUNNER:Lorg/chromium/base/task/TaskRunner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedFilesDirectory()Ljava/io/File;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "screenshot"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static isDangerousFilename(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->PERMITTED_EXTENSIONS:Ljava/util/Set;

    invoke-static {p0}, Lorg/chromium/base/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDangerousMimeType(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->PERMITTED_MIME_TYPES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/webshare/mojom/SharedFile;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "TinShareServiceImpl"

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v4}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/terrace/Terrace;->getListenerCallback()Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, "terraceListenerCallback is null"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sec/terrace/Terrace;->getSanitizedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Lorg/chromium/url/mojom/Url;->url:Ljava/lang/String;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_2
    const-string v4, " "

    invoke-static {p2, v4}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lorg/chromium/url/mojom/Url;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v5

    :goto_2
    new-instance v9, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;

    move-object v4, p0

    invoke-direct {v9, p0, v2}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;-><init>(Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V

    if-eqz v3, :cond_9

    array-length v10, v3

    if-nez v10, :cond_4

    goto/16 :goto_5

    :cond_4
    array-length v0, v3

    const/16 v1, 0xa

    const/4 v10, 0x2

    if-le v0, v1, :cond_5

    invoke-interface {v2, v10}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void

    :cond_5
    array-length v0, v3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    aget-object v11, v3, v1

    iget-object v12, v11, Lorg/chromium/webshare/mojom/SharedFile;->name:Lorg/chromium/mojo_base/mojom/SafeBaseName;

    iget-object v12, v12, Lorg/chromium/mojo_base/mojom/SafeBaseName;->path:Lorg/chromium/mojo_base/mojom/FilePath;

    iget-object v12, v12, Lorg/chromium/mojo_base/mojom/FilePath;->path:Ljava/lang/String;

    invoke-static {v12}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->isDangerousFilename(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v11, Lorg/chromium/webshare/mojom/SharedFile;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    iget-object v12, v12, Lorg/chromium/blink/mojom/SerializedBlob;->contentType:Ljava/lang/String;

    invoke-static {v12}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->isDangerousMimeType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot share potentially dangerous \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Lorg/chromium/webshare/mojom/SharedFile;->blob:Lorg/chromium/blink/mojom/SerializedBlob;

    iget-object v1, v1, Lorg/chromium/blink/mojom/SerializedBlob;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lorg/chromium/webshare/mojom/SharedFile;->name:Lorg/chromium/mojo_base/mojom/SafeBaseName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v10}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void

    :cond_8
    new-instance v10, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object v4, v7

    move-object v5, p1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;-><init>(Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;Lorg/chromium/webshare/mojom/ShareService$Share_Response;[Lorg/chromium/webshare/mojom/SharedFile;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    sget-object v0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->TASK_RUNNER:Lorg/chromium/base/task/TaskRunner;

    invoke-virtual {v10, v0}, Lorg/chromium/base/task/AsyncTask;->executeOnTaskRunner(Lorg/chromium/base/task/TaskRunner;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_9
    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object p0, v7

    move-object p1, v1

    move-object p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v9

    invoke-interface/range {p0 .. p5}, Lcom/sec/terrace/TerraceListenerCallback;->showShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V

    return-void

    :cond_a
    :goto_6
    const-string v0, "TerraceActivity or getActiveTerrace() is null"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void
.end method
