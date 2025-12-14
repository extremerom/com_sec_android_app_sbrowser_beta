.class Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionItemParam"
.end annotation


# instance fields
.field private final mHasAnswer:Z

.field private mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p3, p1, p4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->mUrl:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->mType:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->mHasAnswer:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->getType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->mType:I

    return p0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter$SuggestionItemParam;->mUrl:Ljava/lang/String;

    return-object p0
.end method
