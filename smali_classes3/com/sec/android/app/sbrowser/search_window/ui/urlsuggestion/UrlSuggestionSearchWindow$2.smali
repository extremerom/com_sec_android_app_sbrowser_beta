.class Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutocompleteReceived(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;->f(Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateAutocompleteText(Ljava/lang/String;)V

    return-void
.end method

.method public onFirstSuggestionsUpdated(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow$2;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;->f(Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindow;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateTopSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    return-void
.end method
