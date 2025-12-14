.class Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter$UrlSuggestionSearchWindowViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlSuggestionSearchWindowViewHolder"
.end annotation


# instance fields
.field final mUrlSuggestionSearchWindow:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0c07

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter$UrlSuggestionSearchWindowViewHolder;->mUrlSuggestionSearchWindow:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;

    return-void
.end method
