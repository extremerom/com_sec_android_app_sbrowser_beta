.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;
.implements Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;
    }
.end annotation


# instance fields
.field protected isFirstSuggestionEnabled:Z

.field private final mAutocompleteController:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;

.field protected mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mBookmarksSuggestion:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;

.field protected mDataLakeSuggestions:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectSearchController:Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;

.field private mFirstSuggestion:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

.field protected mListener:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;

.field protected mPreviousReceivedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskId:I

.field protected mUIUpdateHandler:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;

.field protected final mView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarksSuggestion:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->isFirstSuggestionEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mDataLakeSuggestions:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mUIUpdateHandler:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mTaskId:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchConstants;->isDirectSearchSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mDirectSearchController:Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;

    :cond_0
    new-instance p1, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;-><init>(Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mAutocompleteController:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;

    return-void
.end method

.method private makeFirstSuggestion(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
    .locals 12

    new-instance p0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getCurrentSearchEngineUri()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    sget-object v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v1

    const-string v0, "{searchTerms}"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)V

    return-object p1
.end method

.method private updateFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mFirstSuggestion:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mListener:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;->onFirstSuggestionsUpdated(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBookmarksSuggestionItemsFetched(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->updateFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "SuggestionListController"

    const-string p1, "Same Suggestion Items"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mTaskId:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v1

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v1

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->URL_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v1

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->NAVSUGGEST:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    if-ne v1, v2, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->updateFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mUIUpdateHandler:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mUIUpdateHandler:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->setQuery(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->isFirstSuggestionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->makeFirstSuggestion(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->setFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarksSuggestion:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->clearIfRunning()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mDirectSearchController:Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchConstants;->isDirectSearchSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mDirectSearchController:Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchController;->query(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mUIUpdateHandler:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mAutocompleteController:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;

    invoke-virtual {v0, p3, p2, v1}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->start(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarksSuggestion:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;

    invoke-virtual {p3, p1, p0, p2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion;->fetchSuggestionItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/BookmarksSuggestion$OnBookmarksSuggestionItemsFetched;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mListener:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;

    return-void
.end method

.method public stopQuery()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mAutocompleteController:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->start(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mAutocompleteController:Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;->stop()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mUIUpdateHandler:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
