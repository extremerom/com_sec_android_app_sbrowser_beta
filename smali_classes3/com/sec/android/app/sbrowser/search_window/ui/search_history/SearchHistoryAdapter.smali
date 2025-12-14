.class public final Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;,
        Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/h0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0011\u0012B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\n\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ#\u0010\u000f\u001a\u00020\u000e2\n\u0010\u000c\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;",
        "Landroidx/recyclerview/widget/h0;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;",
        "searchHistoryViewHolder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;I)V",
        "SearchHistoryViewHolder",
        "SearchHistoryDiffCallback",
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
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/A;)V

    return-void
.end method

.method public static final synthetic access$getItem(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;I)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchHistoryViewHolder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/h0;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->bind(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "viewGroup"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;)V

    return-object p2
.end method
