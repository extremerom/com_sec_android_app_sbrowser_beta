.class public Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;
.super Lcom/sec/terrace/browser/TerraceLoadUrlParams;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setTransitionType(I)V

    if-eqz p3, :cond_0

    new-instance p1, Lcom/sec/terrace/browser/TerraceReferrer;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/sec/terrace/browser/TerraceReferrer;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setReferrer(Lcom/sec/terrace/browser/TerraceReferrer;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/HttpRequestHeaderHandler;->hasExtraHeaders()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/HttpRequestHeaderHandler;->getExtraHeadersString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setVerbatimHeaders(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
