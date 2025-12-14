.class final Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataLakeUIUpdateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;",
        "",
        "url",
        "",
        "isInBookmarkSuggestion",
        "(Ljava/lang/String;)Z",
        "Ldb/r;",
        "clear",
        "()V",
        "Landroid/os/Message;",
        "msg",
        "isInvalidMessage",
        "(Landroid/os/Message;)Z",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;",
        "itemReceiver",
        "update",
        "(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;Landroid/os/Message;)V",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;",
        "dataLakeSuggestions",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;",
        "browsingDataList",
        "",
        "mHistoryCount",
        "I",
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
.field private final browsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mHistoryCount:I


# direct methods
.method private final isInBookmarkSuggestion(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;->mItemReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "iterator(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->browsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->mHistoryCount:I

    return-void
.end method

.method public isInvalidMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v0, :cond_0

    move p0, v0

    :cond_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public update(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;Landroid/os/Message;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_1
    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->mHistoryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->mHistoryCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getUrl(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->isInBookmarkSuggestion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->browsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->browsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mDataLakeSuggestions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v2, v0}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;

    sget-object v0, Lfb/v;->a:Lfb/v;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->browsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {p2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->setData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mListener:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;->onDataLakeSuggestionsUpdated(Ljava/lang/Boolean;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mListener:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$DataLakeUIUpdateHandler;->dataLakeSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p0, ""

    :goto_2
    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;->onAutocompleteReceived(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
