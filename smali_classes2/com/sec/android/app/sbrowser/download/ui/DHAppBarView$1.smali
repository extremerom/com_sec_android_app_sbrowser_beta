.class Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->notifyAppBarHeightChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

.field final synthetic val$params:Lt/k0;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Lt/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;->val$params:Lt/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->f(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;->val$params:Lt/k0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->f(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
