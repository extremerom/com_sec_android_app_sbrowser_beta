.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->suggestionListener()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1",
        "Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListControllerListener;",
        "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
        "suggestion",
        "Ldb/r;",
        "onFirstSuggestionsUpdated",
        "(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V",
        "",
        "text",
        "onAutocompleteReceived",
        "(Ljava/lang/String;)V",
        "",
        "suggestionExists",
        "onDataLakeSuggestionsUpdated",
        "(Ljava/lang/Boolean;)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutocompleteReceived(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->access$getViewModel$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateAutocompleteText(Ljava/lang/String;)V

    return-void
.end method

.method public onDataLakeSuggestionsUpdated(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->access$getViewModel$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateDataLakeSuggestion(Z)V

    return-void
.end method

.method public onFirstSuggestionsUpdated(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup$suggestionListener$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->access$getViewModel$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateTopSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    return-void
.end method
