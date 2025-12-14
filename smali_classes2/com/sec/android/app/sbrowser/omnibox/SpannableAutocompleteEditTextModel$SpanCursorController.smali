.class Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanCursorController"
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

.field private mSpan:Landroid/text/style/BackgroundColorSpan;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    return-void
.end method

.method private getSpanIndex(Landroid/text/Editable;)I
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private setCursorVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->setCursorVisible(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public commitSpan()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->setCursorVisible(Z)V

    return-void
.end method

.method public reflectTextUpdateInState(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;Ljava/lang/CharSequence;)V
    .locals 2

    instance-of v0, p2, Landroid/text/Editable;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->getSpanIndex(Landroid/text/Editable;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 p2, 0x0

    invoke-interface {v0, p2, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->setUserText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->setUserText(Ljava/lang/String;)V

    return-void
.end method

.method public removeSpan()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->getSpanIndex(Landroid/text/Editable;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->getSpanIndex(Landroid/text/Editable;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method

.method public setSpan(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelStart()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getHighlightColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {p1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->setCursorVisible(Z)V

    return-void
.end method
