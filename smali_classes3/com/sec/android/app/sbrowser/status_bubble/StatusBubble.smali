.class public Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayAfterRedirection:Ljava/lang/String;

.field private mDisplayText:Ljava/lang/String;

.field private mPrivateEventHandler:Landroid/os/Handler;

.field private mStatusDisplayView:Landroid/widget/TextView;

.field private mTabView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble$1;-><init>(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e08b5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayAfterRedirection:Ljava/lang/String;

    return-object p0
.end method

.method private addView()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->isViewNotAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mTabView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const v3, 0x800053

    const/16 v4, 0x1f4

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    return-object p0
.end method

.method private isViewNotAdded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetBubbleText()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayText:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setNavigationInfo(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mContext:Landroid/content/Context;

    const v2, 0x7f140fd2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->updateStatusDisplay(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    const v1, 0x7f140fd3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayAfterRedirection:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->updateStatusDisplay(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private show()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->addView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->updateWidth()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateWidth()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mTabView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->hide()V

    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mStatusDisplayView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->resetBubbleText()V

    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->setNavigationInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateStatusDisplay(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->resetBubbleText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->hide()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mDisplayText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/status_bubble/StatusBubble;->mPrivateEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
