.class public final Lorg/chromium/net/ChromiumNetworkAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static openConnection(Ljava/net/URL;Lorg/chromium/net/NetworkTrafficAnnotationTag;)Ljava/net/URLConnection;
    .locals 0

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method
