.class public Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;->mListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;

    return-void
.end method

.method private isTouchSpannable(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    int-to-float p3, v0

    invoke-virtual {p1, p0, p3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    const-class p3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, p0, p0, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    array-length p0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;->isTouchSpannable(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;->mListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;->onActionDown()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod;->mListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroLinkMovementMethod$Listener;->onActionUp()V

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
