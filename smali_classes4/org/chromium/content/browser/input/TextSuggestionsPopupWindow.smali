.class public Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;
.super Lorg/chromium/content/browser/input/SuggestionsPopupWindow;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mPrefixSpan:Landroid/text/style/TextAppearanceSpan;

.field private mSuffixSpan:Landroid/text/style/TextAppearanceSpan;

.field private mSuggestionInfos:[Lorg/chromium/content/browser/input/SuggestionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    sget p3, Lorg/chromium/content/R$style;->TextAppearance_SuggestionPrefixOrSuffix:I

    invoke-direct {p2, p1, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mPrefixSpan:Landroid/text/style/TextAppearanceSpan;

    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p2, p1, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuffixSpan:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method


# virtual methods
.method public applySuggestion(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuggestionInfos:[Lorg/chromium/content/browser/input/SuggestionInfo;

    aget-object p1, v0, p1

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getMarkerTag()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getSuggestionIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->applyTextSuggestion(II)V

    return-void
.end method

.method public getSuggestionItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuggestionInfos:[Lorg/chromium/content/browser/input/SuggestionInfo;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSuggestionText(I)Landroid/text/SpannableString;
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuggestionInfos:[Lorg/chromium/content/browser/input/SuggestionInfo;

    aget-object p1, v0, p1

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mPrefixSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuffixSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getSuggestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/SuggestionInfo;->getSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p0, v2, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public getSuggestionsCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuggestionInfos:[Lorg/chromium/content/browser/input/SuggestionInfo;

    array-length p0, p0

    return p0
.end method

.method public show(DDLjava/lang/String;[Lorg/chromium/content/browser/input/SuggestionInfo;)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    invoke-virtual {p6}, [Lorg/chromium/content/browser/input/SuggestionInfo;->clone()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, [Lorg/chromium/content/browser/input/SuggestionInfo;

    iput-object p6, p0, Lorg/chromium/content/browser/input/TextSuggestionsPopupWindow;->mSuggestionInfos:[Lorg/chromium/content/browser/input/SuggestionInfo;

    const/4 p6, 0x0

    invoke-virtual {p0, p6}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->setAddToDictionaryEnabled(Z)V

    invoke-super/range {p0 .. p5}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->show(DDLjava/lang/String;)V

    return-void
.end method
