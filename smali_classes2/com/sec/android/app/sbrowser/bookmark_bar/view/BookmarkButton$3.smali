.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCustomLongPressWorking:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->lambda$onTouch$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->lambda$onTouch$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onTouch$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->showContextualMenu(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onTouch$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->startDragBookmark(Landroid/view/View;)V

    return-void
.end method

.method private showContextualMenu(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->mCustomLongPressWorking:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;->onLongClickBookmarkButton(JZZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private startDragBookmark(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->mCustomLongPressWorking:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;->onLongClickBookmarkButton(JZZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private stopAllLongPressHandler()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->g(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->f(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)J

    move-result-wide v2

    const-wide/16 v4, -0x3e7

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->mCustomLongPressWorking:Z

    iput-boolean p2, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mShouldConsumeTouchEvent:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->mCustomLongPressWorking:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->stopAllLongPressHandler()V

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object v2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)J

    move-result-wide v3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z

    move-result v5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;->onTouchBookmarkButton(JZLjava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeStandalone()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;I)V

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->k(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;)V

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;I)V

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->l(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->g(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->f(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v2, 0x514

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v1
.end method
