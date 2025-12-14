.class Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;->val$listener:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;->val$listener:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;->onBottomBarAnimationEnd()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->c(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;->val$listener:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;->onBottomBarAnimationStart()V

    return-void
.end method
