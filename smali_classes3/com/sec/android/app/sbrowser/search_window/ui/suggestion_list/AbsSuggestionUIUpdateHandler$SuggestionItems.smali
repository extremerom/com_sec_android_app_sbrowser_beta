.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->mMaxSize:I

    return-void
.end method


# virtual methods
.method public add(ILcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->mMaxSize:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iget p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->mMaxSize:I

    if-le p1, p2, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(ILcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    return-void
.end method

.method public add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->mMaxSize:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;->add(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)Z

    move-result p0

    return p0
.end method
