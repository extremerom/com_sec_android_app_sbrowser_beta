.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;
    }
.end annotation


# instance fields
.field private mContentOffsetYPix:F

.field private mControlsOffsetYPix:F

.field private mIsBottom:Z

.field private mNeedFade:Z

.field private mVisibleTriggered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mNeedFade:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mIsBottom:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mVisibleTriggered:Z

    return-void
.end method


# virtual methods
.method public isVisibleTriggered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mVisibleTriggered:Z

    return p0
.end method

.method public onOffsetsForFullscreenChanged(Landroid/view/View;FFZZZ)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mControlsOffsetYPix:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mNeedFade:Z

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mControlsOffsetYPix:F

    iput p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mContentOffsetYPix:F

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mIsBottom:Z

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    if-eqz p4, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mVisibleTriggered:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mVisibleTriggered:Z

    if-eqz p6, :cond_2

    return-void

    :cond_2
    sget-object p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_OFFSET_CHANGED:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    const/16 p3, 0x8

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->updateVisibility(Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;I)V

    :goto_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mNeedFade:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mNeedFade:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mControlsOffsetYPix:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    sget-object p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_TOUCH_EVENT:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->updateVisibility(Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;I)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_TOUCH_EVENT:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->updateVisibility(Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;I)V

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mVisibleTriggered:Z

    return-void
.end method

.method public updateVisibility(Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "updateVisibility t:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " | v:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TransBarVisibleHandler"

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateVisibleTrigger(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->mVisibleTriggered:Z

    return-void
.end method
