.class Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;->val$visible:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->b(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;->val$visible:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->b(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
