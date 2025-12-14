.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setTouchDelegate(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

.field final synthetic val$leftOffset:I

.field final synthetic val$rightOffset:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$leftOffset:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$rightOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
