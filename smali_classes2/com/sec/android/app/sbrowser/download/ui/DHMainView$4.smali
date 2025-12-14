.class Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

.field final synthetic val$dismissRun:Ljava/lang/Runnable;

.field final synthetic val$negativeRun:Ljava/lang/Runnable;

.field final synthetic val$positiveRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$positiveRun:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$negativeRun:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$dismissRun:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$dismissRun:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$dismissRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDialogNegativeClick(Landroidx/fragment/app/u;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$negativeRun:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$negativeRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDialogPositiveClick(Landroidx/fragment/app/u;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$positiveRun:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;->val$positiveRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
