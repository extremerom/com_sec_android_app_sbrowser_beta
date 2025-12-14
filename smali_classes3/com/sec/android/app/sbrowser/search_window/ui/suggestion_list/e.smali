.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;

.field public final synthetic b:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/e;->a:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/e;->b:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/e;->b:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/e;->a:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->a(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;Landroid/view/View;)V

    return-void
.end method
