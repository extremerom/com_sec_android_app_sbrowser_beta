.class public final Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;",
        "recyclerView",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;)V",
        "",
        "maxHeight",
        "Ldb/r;",
        "updateMaxHeight",
        "(I)V",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;",
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
.field private final recyclerView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;->recyclerView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;

    return-void
.end method


# virtual methods
.method public final updateMaxHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;->recyclerView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->getMaxHeight()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;->recyclerView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;->setMaxHeight(I)V

    :cond_0
    return-void
.end method
