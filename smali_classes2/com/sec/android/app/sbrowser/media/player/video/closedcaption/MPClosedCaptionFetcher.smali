.class Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MPClosedCaptionFetcher"


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

.field private mCookies:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;)Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->mCallback:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->mCallback:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

    return-void
.end method

.method public addCookies(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->mCookies:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    const-string v0, "exception : "

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/ConnectionRequest;->formURL([Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->mCookies:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v3, "Cookie"

    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/ConnectionRequest;->request(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;)V

    new-instance p0, Lt9/c;

    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lt9/c;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lt9/c;->i([BLr2/b;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :goto_3
    :try_start_2
    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->TAG:Ljava/lang/String;

    const-string p1, "doInBackground end"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p0
.end method
