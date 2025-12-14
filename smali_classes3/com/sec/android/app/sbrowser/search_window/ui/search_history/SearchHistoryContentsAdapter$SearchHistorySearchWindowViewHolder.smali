.class public final Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter$SearchHistorySearchWindowViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SearchHistorySearchWindowViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter$SearchHistorySearchWindowViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter$SearchHistorySearchWindowViewHolder;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->getRoot()Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    return-void
.end method
