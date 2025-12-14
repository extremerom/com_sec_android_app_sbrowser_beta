.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListView$2$1$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;-><init>(Landroid/content/Context;Landroid/view/View;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListView$2$1$1",
        "Landroid/view/ViewOutlineProvider;",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/Outline;",
        "outline",
        "Ldb/r;",
        "getOutline",
        "(Landroid/view/View;Landroid/graphics/Outline;)V",
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
.field final synthetic $this_apply:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListView$2$1$1;->$this_apply:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListView$2$1$1;->$this_apply:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070fe5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float v6, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
