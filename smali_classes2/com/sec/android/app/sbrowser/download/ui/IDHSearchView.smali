.class public interface abstract Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;


# virtual methods
.method public abstract addRecentSearchAndDismissKeyBoard()V
.end method

.method public abstract getSearchEditTextData()Landroid/widget/EditText;
.end method

.method public abstract getSearchView()Landroid/view/View;
.end method

.method public abstract hideSearchView()V
.end method

.method public abstract isSearchViewVisible()Z
.end method

.method public abstract isShowingRecentSearch()Z
.end method

.method public abstract onVoiceSearchResult(Landroid/content/Intent;)V
.end method

.method public abstract sendDataToSearchClient()V
.end method

.method public abstract setDHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
.end method

.method public abstract showKeyboard()V
.end method

.method public abstract showSearchView()V
.end method
