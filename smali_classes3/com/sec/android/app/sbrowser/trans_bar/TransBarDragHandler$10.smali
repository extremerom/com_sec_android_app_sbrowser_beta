.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->getGestureListener(Landroid/view/View;Landroid/view/View;)Landroid/view/GestureDetector$OnGestureListener;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;->val$barView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;->val$barView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;->val$dragView:Landroid/view/View;

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
