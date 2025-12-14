.class Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadThumbnailFromUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final mCookies:Ljava/lang/String;

.field final mDuration:I

.field final mHandler:Landroid/os/Handler;

.field final mThumbnailUrl:Ljava/lang/String;

.field private final mThumbnailUtilDelegate:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;-><init>(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mThumbnailUrl:Ljava/lang/String;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->getCookies()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mCookies:Ljava/lang/String;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mDuration:I

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mVideoUrl:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mThumbnailUtilDelegate:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancelTaskAfterDelayed(J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadThumbnailFromUrl::doInBackground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/URL;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mThumbnailUrl:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mCookies:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "Cookie"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mDuration:I

    int-to-long v1, p0

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[MediaHistory] Success to update thumbnail."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object p0, v1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x140

    const/16 v0, 0xb4

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadThumbnailFromUrl::onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mThumbnailUtilDelegate:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;->onThumbnailUpdated(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
