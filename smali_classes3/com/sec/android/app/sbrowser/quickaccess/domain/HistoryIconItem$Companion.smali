.class public final Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;",
        "",
        "<init>",
        "()V",
        "from",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "terraceHistoryItem",
        "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
    .locals 8
    .param p1    # Lcom/sec/terrace/browser/history/TerraceHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "terraceHistoryItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v0, "getUrl(...)"

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v0, "getTitle(...)"

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getVisitCount()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->isSelected()Z

    move-result v6

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getBackgroundColor()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;-><init>(Ljava/lang/String;Ljava/lang/String;JIZI)V

    return-object p0
.end method
