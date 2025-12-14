.class public interface abstract Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$OnSuggestionsReceivedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSuggestionsReceivedListener"
.end annotation


# virtual methods
.method public abstract onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;)V
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
.end method
