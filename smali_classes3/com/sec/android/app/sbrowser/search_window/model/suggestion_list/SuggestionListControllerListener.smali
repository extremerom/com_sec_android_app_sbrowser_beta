.class public interface abstract Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onAutocompleteReceived(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onDataLakeSuggestionsUpdated(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public abstract onFirstSuggestionsUpdated(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
.end method
