.class final Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UIUpdateHandler"
.end annotation


# instance fields
.field private final mBrowsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

.field private mHistoryCount:I

.field private final mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

.field private final mRichEntityItems:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

.field private final mSearchSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->getMaxRichEntity()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mRichEntityItems:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mSearchSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mBrowsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    return-void
.end method

.method private isInBookmarkSuggestion(Ljava/lang/String;)Z
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

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mSearchSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mBrowsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mRichEntityItems:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mHistoryCount:I

    return-void
.end method

.method public isInvalidMessage(Landroid/os/Message;)Z
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public update(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;Landroid/os/Message;)V
    .locals 5

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mPreviousReceivedItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    sget-object v2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$1;->$SwitchMap$com$sec$terrace$browser$omnibox$TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType:[I

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v2

    sget-object v3, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->HISTORY_URL:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mHistoryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mHistoryCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->isInBookmarkSuggestion(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mBrowsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(ILcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mSearchSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mRichEntityItems:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mBrowsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mBookmarks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1, v0}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mRichEntityItems:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mSearchSuggestions:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mBrowsingDataList:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->setData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;->mListener:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController$UIUpdateHandler;->mPreloadedDomains:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;->onAutocompleteReceived(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
