.class Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->d(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Landroid/widget/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->d(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->a(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "DragSelectTouchListener"

    const-string v0, "fail scroll. ignore exception"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
