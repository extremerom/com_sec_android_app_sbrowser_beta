.class public Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;,
        Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;
    }
.end annotation


# static fields
.field private static final NON_COMPOSITIONAL_TEXT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mBatchEditNestCount:I

.field private final mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

.field private mDelegateShouldIgnoreAccessibilityEvents:Z

.field private mDeletePostfixOnNextBeginImeCommand:I

.field private mIgnoreTextChangeFromAutocomplete:Z

.field private mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

.field private mLastEditWasTyping:Z

.field private mLastUpdateSelEnd:I

.field private mLastUpdateSelStart:I

.field private mLayoutDirectionIsLtr:Z

.field private final mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

.field private final mPreviouslySetState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

.field private final mSpanCursorController:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\p{script=latin}\\p{script=cyrillic}\\p{script=greek}\\p{script=hebrew}\\p{Punct} 0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->NON_COMPOSITIONAL_TEXT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastEditWasTyping:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mIgnoreTextChangeFromAutocomplete:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLayoutDirectionIsLtr:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegateShouldIgnoreAccessibilityEvents:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getSelectionStart()I

    move-result v2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getSelectionEnd()I

    move-result v3

    const-string v4, ""

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;-><init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;-><init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslySetState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;-><init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mSpanCursorController:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    return-object p0
.end method

.method private clearAutocompleteText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslySetState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->clearAutocompleteText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->clearAutocompleteText()V

    return-void
.end method

.method private clearAutocompleteTextAndUpdateSpanCursor()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->clearAutocompleteText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mSpanCursorController:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->removeSpan()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->notifyAutocompleteTextStateChanged()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDeletePostfixOnNextBeginImeCommand:I

    return p0
.end method

.method private doesKeyboardSupportAutocomplete()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getKeyboardPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".iqqi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "omronsoft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".iwnn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslySetState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mSpanCursorController:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDeletePostfixOnNextBeginImeCommand:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastEditWasTyping:Z

    return-void
.end method

.method public static isNonCompositionalText(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->NON_COMPOSITIONAL_TEXT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->clearAutocompleteText()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->notifyAutocompleteTextStateChanged()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->shouldFinishCompositionOnDeletion()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->updateSelectionForTesting()V

    return-void
.end method

.method private notifyAccessibilityService()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->sendAccessibilityEventForUserTextChange(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->sendAccessibilityEventForAppendingAutocomplete(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    return-void
.end method

.method private notifyAutocompleteTextStateChanged()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->notifyAccessibilityService()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->hasAutocompleteText()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->hasAutocompleteText()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mIgnoreTextChangeFromAutocomplete:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->onAutocompleteTextStateChanged()V

    return-void
.end method

.method private sendAccessibilityEventForAppendingAutocomplete(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->hasAutocompleteText()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegateShouldIgnoreAccessibilityEvents:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegateShouldIgnoreAccessibilityEvents:Z

    return-void
.end method

.method private sendAccessibilityEventForUserTextChange(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V
    .locals 5

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isBackwardDeletedFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isForwardTypedFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegateShouldIgnoreAccessibilityEvents:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelStart()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelStart()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelEnd()I

    move-result p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelEnd()I

    move-result p2

    if-eq p1, p2, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    const/16 p2, 0x2000

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegateShouldIgnoreAccessibilityEvents:Z

    return-void
.end method

.method private setAutocompleteTextInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslySetState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->set(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    :cond_0
    return-void
.end method

.method private shouldFinishCompositionOnDeletion()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getKeyboardPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.sec.android.inputmethod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.lge.ime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSelectionForTesting()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getSelectionEnd()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastUpdateSelStart:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastUpdateSelEnd:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastUpdateSelStart:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastUpdateSelEnd:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->onUpdateSelectionForTesting(II)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onBeginImeCommand()Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLayoutDirectionIsLtr:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLayoutDirectionIsLtr:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->commitAutocomplete()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->onEndImeCommand()Z

    return p1
.end method

.method public getAutocompleteText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getAutocompleteText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    return-object p0
.end method

.method public getTextWithAutocomplete()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextWithoutAutocomplete()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAutocomplete()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->hasAutocompleteText()Z

    move-result p0

    return p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastUpdateSelStart:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastUpdateSelEnd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    return-object p1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;-><init>(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->setTarget(Landroid/view/inputmethod/InputConnection;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    return-object p0
.end method

.method public onFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->setSelection(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelStart()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getSelEnd()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->setSelection(II)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->hasAutocompleteText()Z

    move-result v1

    if-eqz v1, :cond_4

    if-gt p1, v0, :cond_3

    if-le p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->clearAutocompleteTextAndUpdateSpanCursor()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;->commitAutocomplete()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->updateSelectionForTesting()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->notifyAutocompleteTextStateChanged()V

    return-void
.end method

.method public onSetText(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->set(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mSpanCursorController:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->reset()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslyNotifiedState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mPreviouslySetState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->copyFrom(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->updateSelectionForTesting()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mSpanCursorController:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {p2, p3, p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$SpanCursorController;->reflectTextUpdateInState(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    if-lez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastEditWasTyping:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->clearAutocompleteTextAndUpdateSpanCursor()V

    return-void
.end method

.method public setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->setIgnoreTextChangeFromAutocomplete(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->setAutocompleteTextInternal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->setIgnoreTextChangeFromAutocomplete(Z)V

    return-void
.end method

.method public setIgnoreTextChangeFromAutocomplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mIgnoreTextChangeFromAutocomplete:Z

    return-void
.end method

.method public setInputConnectionForTesting(Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mInputConnection:Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel$AutocompleteInputConnection;

    return-void
.end method

.method public setLayoutDirectionIsLtr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLayoutDirectionIsLtr:Z

    return-void
.end method

.method public shouldAutocomplete()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mBatchEditNestCount:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mLastEditWasTyping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mCurrentState:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteState;->isCursorAtEndOfUserText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->doesKeyboardSupportAutocomplete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->isNonCompositionalText(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldIgnoreAccessibilityEvent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;->mDelegateShouldIgnoreAccessibilityEvents:Z

    return p0
.end method
