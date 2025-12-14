.class public abstract Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;,
        Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;
    }
.end annotation


# static fields
.field private static final CARDBOARD_CONFIG_FOLDER:Ljava/lang/String; = "Cardboard"

.field private static final CARDBOARD_DEVICE_PARAMS_FILE:Ljava/lang/String; = "current_device_params"

.field private static final CARDBOARD_DEVICE_PARAMS_STREAM_SENTINEL:I = 0x35587a2b

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTPS_SCHEME_PREFIX:Ljava/lang/String; = "https://"

.field private static final HTTPS_TIMEOUT_MS:I = 0x1388

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final HTTP_SCHEME_PREFIX:Ljava/lang/String; = "http://"

.field private static final MAX_REDIRECTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CardboardParamsUtils"

.field private static final URI_CODING_PARAMS:I = 0xb

.field private static final URI_HOST_GOOGLE:Ljava/lang/String; = "google.com"

.field private static final URI_HOST_GOOGLE_SHORT:Ljava/lang/String; = "g.co"

.field private static final URI_KEY_PARAMS:Ljava/lang/String; = "p"

.field private static final URI_ORIGINAL_CARDBOARD_QR_CODE:Landroid/net/Uri;

.field private static final URI_PATH_CARDBOARD_CONFIG:Ljava/lang/String; = "cardboard/cfg"

.field private static final URI_PATH_CARDBOARD_HOME:Ljava/lang/String; = "cardboard"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "g.co"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cardboard"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->URI_ORIGINAL_CARDBOARD_QR_CODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromUri(Landroid/net/Uri;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isOriginalCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/cardboard/sdk/deviceparams/CardboardV1DeviceParams;->build()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->readDeviceParamsFromUri(Landroid/net/Uri;)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v2, "URI \"%s\" not recognized as Cardboard viewer."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static followCardboardParamRedirect(Landroid/net/Uri;ILcom/google/cardboard/sdk/qrcode/UrlFactory;)Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isCardboardUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lt v0, p1, :cond_0

    sget-object p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string p2, "Exceeding the number of maximum redirects: "

    invoke-static {p1, p2, p0}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->resolveHttpsRedirect(Landroid/net/Uri;Lcom/google/cardboard/sdk/qrcode/UrlFactory;)Landroid/net/Uri;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static getDeviceParamsFile(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;->SCOPED_STORAGE:Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    :goto_0
    const-string p1, "Cardboard"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    new-instance p0, Ljava/io/File;

    const-string p1, "current_device_params"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already exists as a file, but is expected to be a directory."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getParamsFromUriString(Ljava/lang/String;Lcom/google/cardboard/sdk/qrcode/UrlFactory;)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;
    .locals 5

    const-string v0, "Following redirects for original URI: "

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error when parsing URI: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->error(I)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "http://"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_2
    :goto_0
    :try_start_0
    sget-object v2, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->followCardboardParamRedirect(Landroid/net/Uri;ILcom/google/cardboard/sdk/qrcode/UrlFactory;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    const-string p0, "Error when following URI redirects"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->error(I)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->createFromUri(Landroid/net/Uri;)[B

    move-result-object p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error when parsing device parameters from URI query string: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->error(I)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->success([B)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while following URL redirect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->error(I)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0
.end method

.method private static isAtLeastQ()Z
    .locals 1
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method private static isCardboardDeviceUri(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "google.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/cardboard/cfg"

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCardboardUri(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isOriginalCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static isOriginalCardboardDeviceUri(Landroid/net/Uri;)Z
    .locals 1

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->URI_ORIGINAL_CARDBOARD_QR_CODE:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static readDeviceParams(Landroid/content/Context;)[B
    .locals 4
    .annotation build Lcom/google/cardboard/sdk/UsedByNative;
    .end annotation

    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isAtLeastQ()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v1, "Reading device parameters from external storage."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;->EXTERNAL_STORAGE:Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;

    invoke-static {v0, p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->readDeviceParamsFromStorage(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)[B

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v1, "Reading device parameters from both scoped and external storage."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;->EXTERNAL_STORAGE:Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;

    invoke-static {v1, p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->readDeviceParamsFromStorage(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)[B

    move-result-object v1

    sget-object v2, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;->SCOPED_STORAGE:Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;

    invoke-static {v2, p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->readDeviceParamsFromStorage(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)[B

    move-result-object v3

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    const-string v3, "About to copy external device parameters to scoped storage."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2, p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->writeDeviceParamsToStorage([BLcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Error writing device parameters to scoped storage."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    return-object v3
.end method

.method private static readDeviceParamsFromInputStream(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Error parsing param record: end of stream."

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    :try_start_1
    sget-object p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v6, 0x35587a2b

    if-eq v2, v6, :cond_2

    sget-object p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error parsing param record: incorrect sentinel."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    new-array v2, v1, [B

    invoke-virtual {p0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ne p0, v5, :cond_3

    sget-object p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_3
    return-object v2

    :goto_0
    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static readDeviceParamsFromStorage(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->getDeviceParamsFile(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/InputStreamProvider;->get(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->readDeviceParamsFromInputStream(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    :cond_0
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error reading parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters file not found for reading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_3
    :cond_1
    :goto_2
    return-object v0
.end method

.method private static readDeviceParamsFromUri(Landroid/net/Uri;)[B
    .locals 4

    const-string v0, "p"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v1, "No Cardboard parameters in URI."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/16 v1, 0xb

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing Cardboard parameters from URI failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static resolveHttpsRedirect(Landroid/net/Uri;Lcom/google/cardboard/sdk/qrcode/UrlFactory;)Landroid/net/Uri;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Param URI redirect to "

    const-string v1, "Location: "

    const-string v2, "Response code: "

    invoke-virtual {p1, p0}, Lcom/google/cardboard/sdk/qrcode/UrlFactory;->openHttpsConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/16 v4, 0x1388

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v4, "Accept-Encoding"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "HEAD"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sget-object v5, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x12d

    if-eq v4, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v4, v2, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :cond_1
    :try_start_2
    const-string v2, "Location"

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "Returning null because of null location."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "http://"

    const-string v4, "https://"

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_4
    :goto_0
    :try_start_4
    const-string p0, "Returning null because of wrong redirect URI."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static saveCardboardV1DeviceParams(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/google/cardboard/sdk/deviceparams/CardboardV1DeviceParams;->build()Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->writeDeviceParams([BLandroid/content/Context;)Z

    move-result p0

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "not "

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "save Cardboard V1 device parameters."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveParamsFromUri([BLandroid/content/Context;)V
    .locals 2
    .annotation build Lcom/google/cardboard/sdk/UsedByNative;
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    new-instance p0, Lcom/google/cardboard/sdk/qrcode/UrlFactory;

    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/UrlFactory;-><init>()V

    invoke-static {v0, p0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->getParamsFromUriString(Ljava/lang/String;Lcom/google/cardboard/sdk/qrcode/UrlFactory;)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    iget v1, p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->statusCode:I

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string p1, "Error when trying to get the Cardboard device params from URI: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->params:[B

    invoke-static {p0, p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->writeDeviceParams([BLandroid/content/Context;)Z

    move-result p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-string p0, "not "

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "save Cardboard device parameters."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeDeviceParams([BLandroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->isAtLeastQ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;->SCOPED_STORAGE:Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;

    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v2, "Writing device parameters to scoped storage."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;->EXTERNAL_STORAGE:Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;

    sget-object v1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    const-string v2, "Writing device parameters to external storage."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->writeDeviceParamsToStorage([BLcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static writeDeviceParamsToOutputStream([BLjava/io/OutputStream;)Z
    .locals 2

    const/16 v0, 0x8

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x35587a2b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error writing parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static writeDeviceParamsToStorage([BLcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "Parameters file not found for writing: "

    const-string v1, "Error writing parameters: "

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->getDeviceParamsFile(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$StorageSource;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/cardboard/sdk/qrcode/OutputStreamProvider;->get(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->writeDeviceParamsToOutputStream([BLjava/io/OutputStream;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    :try_start_2
    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :goto_2
    :try_start_4
    sget-object p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :catch_2
    :cond_0
    :goto_3
    const/4 p0, 0x0

    :catch_3
    :cond_1
    :goto_4
    return p0

    :goto_5
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    throw p0
.end method
