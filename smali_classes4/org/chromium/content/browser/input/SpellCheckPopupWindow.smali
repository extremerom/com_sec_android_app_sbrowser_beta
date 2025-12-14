.class public Lorg/chromium/content/browser/input/SpellCheckPopupWindow;
.super Lorg/chromium/content/browser/input/SuggestionsPopupWindow;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->mSuggestions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applySuggestion(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iget-object p0, p0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->mSuggestions:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->applySpellCheckSuggestion(Ljava/lang/String;)V

    return-void
.end method

.method public getSuggestionItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->mSuggestions:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSuggestionText(I)Landroid/text/SpannableString;
    .locals 1

    new-instance v0, Landroid/text/SpannableString;

    iget-object p0, p0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->mSuggestions:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getSuggestionsCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->mSuggestions:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public show(DDLjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, [Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/content/browser/input/SpellCheckPopupWindow;->mSuggestions:[Ljava/lang/String;

    const/4 p6, 0x1

    invoke-virtual {p0, p6}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->setAddToDictionaryEnabled(Z)V

    invoke-super/range {p0 .. p5}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->show(DDLjava/lang/String;)V

    return-void
.end method
