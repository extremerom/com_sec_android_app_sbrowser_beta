.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;
    }
.end annotation


# instance fields
.field private mIsValidTouch:Z

.field private mSpinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mIsValidTouch:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mSpinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;

    return-void
.end method

.method private isMoreLanguageItem(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f141044

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mIsValidTouch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mIsValidTouch:Z

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    move-result p0

    return p0
.end method

.method public setSelection(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->isMoreLanguageItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mSpinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;

    if-nez p0, :cond_0

    const-string p0, "TargetLanguageSpinner"

    const-string p1, "spinnerDelegate is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;->onMoreLanguageItemSelected()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->isMoreLanguageItem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mSpinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;

    if-nez p0, :cond_0

    const-string p0, "TargetLanguageSpinner"

    const-string p1, "spinnerDelegate is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;->onMoreLanguageItemSelected()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->setSelection(IZ)V

    return-void
.end method

.method public setSpinnerDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mSpinnerDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner$SpinnerDelegate;

    return-void
.end method

.method public updateValidTouch(FF)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinner;->mIsValidTouch:Z

    return-void
.end method
