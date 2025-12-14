.class public Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;
    }
.end annotation


# instance fields
.field private final mAdditionalQueryParams:Ljava/lang/String;

.field private mAnswer:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;

.field private final mDescription:Ljava/lang/String;

.field private final mDisplayText:Ljava/lang/String;

.field private final mFillIntoEdit:Ljava/lang/String;

.field private final mImageDominantColor:Ljava/lang/String;

.field private final mImageUrl:Ljava/lang/String;

.field private final mRelevance:I

.field private final mTransition:I

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mType:I

    iput p2, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mRelevance:I

    iput p3, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mTransition:I

    iput-object p4, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mDescription:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p6

    :goto_0
    iput-object p4, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mFillIntoEdit:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mImageUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mImageDominantColor:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mAdditionalQueryParams:Ljava/lang/String;

    iput-object p11, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mAnswer:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->values()[Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->a(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;)I

    move-result v4

    iget v5, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mType:I

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->URL_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hasAnswer()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->mAnswer:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
