.class public final Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;",
        "",
        "stream",
        "Ljava/io/DataInputStream;",
        "version",
        "Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;",
        "<init>",
        "(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;)V",
        "tabId",
        "",
        "getTabId",
        "()I",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "title",
        "getTitle",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final tabId:I

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;)V
    .locals 3
    .param p1    # Ljava/io/DataInputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stream"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->tabId:I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportUrlRead()Z

    move-result v0

    const-string v1, ""

    const-string v2, "readUTF(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->url:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportLock()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportTabGroup()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportTabGroupColor()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportUserAgentRead()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportZoom()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    :cond_6
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportVisitCount()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    :cond_7
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabStateVersion;->supportActiveTime()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    :cond_8
    return-void
.end method


# virtual methods
.method public final getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->tabId:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->url:Ljava/lang/String;

    return-object p0
.end method
