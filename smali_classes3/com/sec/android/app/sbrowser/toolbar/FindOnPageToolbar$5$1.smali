.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;

    iget v3, v2, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$leftOffset:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$rightOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;->val$parent:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5$1;->this$1:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;->val$view:Landroid/view/View;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
