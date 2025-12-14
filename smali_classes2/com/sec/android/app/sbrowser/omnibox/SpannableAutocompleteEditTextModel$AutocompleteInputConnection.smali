.class public Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutocompleteInputConnection"
.end annotation


# instance fields
.field private final mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;-><init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    return-void
.end method

.method private decrementBatchEditCount()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->g(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->m(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V

    :cond_0
    return v0
.end method

.method private incrementBatchEditCount()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->g(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    move-result p0

    return p0
.end method

.method private restoreBackspacedText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->h(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->l(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->incrementBatchEditCount()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->c(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->decrementBatchEditCount()Z

    return-void
.end method

.method private setAutocompleteSpan()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->f(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->removeSpan()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->e(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->reuseAutocompleteTextIfPrefixExtension(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->f(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->setSpan(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->incrementBatchEditCount()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    move-result p0

    return p0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->clearMetaKeyStates(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public commitAutocomplete()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->hasAutocomplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->commitAutocompleteText()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->e(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->i(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->incrementBatchEditCount()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->f(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->commitSpan()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->decrementBatchEditCount()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->c(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->append(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public endBatchEdit()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->decrementBatchEditCount()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    move-result p0

    return p0
.end method

.method public finishComposingText()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->getCursorCapsMode(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return-object p1
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return-object p1
.end method

.method public onBeginImeCommand()Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->incrementBatchEditCount()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->d(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->c(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->d(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->h(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->c(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->d(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->h(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->f(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->removeSpan()Z

    return v0
.end method

.method public onEndImeCommand()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getBackwardDeletedTextFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->decrementBatchEditCount()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->hasAutocompleteText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->restoreBackspacedText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->i(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->j(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->k(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->setAutocompleteSpan()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->j(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->decrementBatchEditCount()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isForwardTypedFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->mPreBatchEditState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isWholeUserTextSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->i(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;Z)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->this$0:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->k(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->commitAutocomplete()V

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->performEditorAction(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->requestCursorUpdates(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingRegion(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setSelection(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method
