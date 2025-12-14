.class Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

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

    return-void
.end method
