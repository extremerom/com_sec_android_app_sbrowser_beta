.class public abstract Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResponse(IJLjava/io/InputStream;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;->parseString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;->handleResponse(ILjava/lang/String;)V

    return-void
.end method

.method public abstract handleResponse(ILjava/lang/String;)V
.end method
