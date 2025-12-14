.class Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MHOembedHttpDataRequest"


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private nonsecureConnectionRequest(Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/ConnectionRequest;->request(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private secureConnectionRequest(Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/ConnectionRequest;->request(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->mCallback:Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/ConnectionRequest;->formURL([Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->secureConnectionRequest(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->nonsecureConnectionRequest(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->TAG:Ljava/lang/String;

    const-string p1, "Unknown protocol : "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->mCallback:Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;->onReceived(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
