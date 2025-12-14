.class public Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;,
        Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MHThumbnailUtil"


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->lambda$updateThumbnailAsynchronously$0(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static extractYoutubeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "^.*((youtu.be\\/)|(v\\/)|(\\/u\\/w\\/)|(embed\\/)|(watch\\?))\\??v?=?([^#\\&\\?]*).*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static fetchAndParseThumbnailUrl(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;->onReceived(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->addCallback(Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static findMobileUrlWithVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->extractYoutubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "http"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "http://"

    goto :goto_1

    :cond_1
    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "https://"

    :goto_1
    const-string v0, "m.youtube.com/watch?v="

    invoke-static {p0, v0, v1}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v1, "Not valid youtube url."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static generateOembedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "youtube.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.youtube.com/oembed?url="

    const-string v1, "&format=json"

    invoke-static {v0, p0, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "vimeo.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://vimeo.com/api/oembed.json?url="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "dailymotion.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://www.dailymotion.com/services/oembed?format=json&url="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v0, "No oembed case."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmapFromByteArray([B)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method public static getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public static getThumbnail(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p1

    rem-int/lit8 p1, p2, 0x2

    add-int/2addr p1, p2

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    instance-of p2, p0, Landroid/view/TextureView;

    if-eqz p2, :cond_1

    check-cast p0, Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$updateThumbnailAsynchronously$0(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string p2, "thumbnail_url"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->loadThumbnailFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V

    return-void
.end method

.method private static loadThumbnailFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    const-string v1, "thumbnailUrl is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "blob:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    const-string p1, "video url is invalid to use metadata retriever."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->cancelTaskAfterDelayed(J)V

    return-void
.end method

.method public static updateThumbnailAsynchronously(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V
    .locals 4

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    const-string p1, "updateThumbnailAsynchronously page url is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->loadThumbnailFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V

    return-void

    :cond_1
    const-string p1, "dailymotion.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x16

    invoke-direct {p1, v1, p2}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->updateThumbnailByOembed(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;)V

    return-void

    :cond_2
    const-string p1, "youtube.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->extractYoutubeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "http://img.youtube.com/vi/"

    const-string v0, "/mqdefault.jpg"

    invoke-static {p1, v1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {p0, v1, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->loadThumbnailFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V

    return-void
.end method

.method private static updateThumbnailByOembed(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->TAG:Ljava/lang/String;

    const-string p1, "Page url is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->generateOembedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->fetchAndParseThumbnailUrl(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;)V

    return-void
.end method
