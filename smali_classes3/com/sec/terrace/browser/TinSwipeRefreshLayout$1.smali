.class Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/TinSwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->e(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->j(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->reset()V

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->c(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->h(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
