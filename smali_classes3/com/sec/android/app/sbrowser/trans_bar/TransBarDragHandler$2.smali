.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->setupDragListeners(Landroid/content/Context;Landroid/view/View;Landroid/view/View;IILcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

.field final synthetic val$barView:Landroid/view/View;

.field final synthetic val$dragView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 p0, 0x5

    if-eq v0, p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int v5, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    float-to-int v8, p2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    float-to-int v9, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;IIIIIIII)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$dragView:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const-string v0, "TransBarDragHandler"

    const-string v2, "onDrag ACTION_DROP"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    float-to-int v4, v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int v5, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    float-to-int v8, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int v9, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;IIIIIIII)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;->val$barView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    sub-float/2addr p0, p2

    float-to-int p0, p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;I)V

    :cond_4
    :goto_0
    return v1
.end method
