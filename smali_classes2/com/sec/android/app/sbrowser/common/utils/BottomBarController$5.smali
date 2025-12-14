.class Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->showBottomBarFromAdapter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field final synthetic val$bottomBarMarginView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$5;->this$0:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$5;->val$bottomBarMarginView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$5;->val$bottomBarMarginView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
