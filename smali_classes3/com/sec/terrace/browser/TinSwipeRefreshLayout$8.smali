.class Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p2}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->g(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)F

    move-result p2

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->g(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)F

    move-result v0

    neg-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iget-object p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p2, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->k(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;F)V

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;->this$0:Lcom/sec/terrace/browser/TinSwipeRefreshLayout;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->i(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;F)V

    return-void
.end method
