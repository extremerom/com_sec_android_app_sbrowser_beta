.class Lcom/sec/terrace/browser/TinSwipeRefreshLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->release(Z)V
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

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$6;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$6;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->f(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$6;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->d(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->l(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
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
