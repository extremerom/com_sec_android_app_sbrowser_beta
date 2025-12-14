.class final Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;
.super Landroidx/recyclerview/widget/A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchHistoryDiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/A;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;",
        "Landroidx/recyclerview/widget/A;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
        "<init>",
        "()V",
        "oldItem",
        "newItem",
        "",
        "areItemsTheSame",
        "(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)Z",
        "areContentsTheSame",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    check-cast p2, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;->areContentsTheSame(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    check-cast p2, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;->areItemsTheSame(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)Z

    move-result p0

    return p0
.end method
