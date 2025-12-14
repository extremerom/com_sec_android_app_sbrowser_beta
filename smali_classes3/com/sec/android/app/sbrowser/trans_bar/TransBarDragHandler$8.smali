.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeMoreView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$8;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "moreView onTouch"

    const-string v0, "TransBarDragHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$8;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)Landroid/view/GestureDetector;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$8;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    const-string p0, "moreView onTouch - mGestureDetector is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
