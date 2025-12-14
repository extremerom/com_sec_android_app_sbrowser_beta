.class public Lorg/chromium/ui/widget/TextViewWithClickableSpans;
.super Lorg/chromium/ui/widget/TextViewWithLeading;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDisambiguationMenu:Landroid/widget/PopupMenu;


# direct methods
.method public static bridge synthetic e(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mDisambiguationMenu:Landroid/widget/PopupMenu;

    return-void
.end method

.method private handleAccessibilityClick()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V

    :cond_2
    :goto_0
    return-void
.end method

.method private openDisambiguationMenu()V
    .locals 8

    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mDisambiguationMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    new-instance v2, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mDisambiguationMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v7, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;

    invoke-direct {v7, p0, v5}, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;-><init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mDisambiguationMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;

    invoke-direct {v1, p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;-><init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object p0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mDisambiguationMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getClickableSpans()[Landroid/text/style/ClickableSpan;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    instance-of v0, p0, Landroid/text/SpannableString;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v1, Landroid/text/style/ClickableSpan;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    return-object p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->touchIntersectsAnyClickableSpans(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->handleAccessibilityClick()V

    return v2

    :cond_0
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->handleAccessibilityClick()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public touchIntersectsAnyClickableSpans(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/SpannableString;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/Layout;

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    int-to-float v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    const-class p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, p0, p0, p1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    array-length p0, p0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
