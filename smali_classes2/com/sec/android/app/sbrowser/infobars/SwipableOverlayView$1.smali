.class Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->createLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->b(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->c(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->e(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;->a(Lcom/sec/android/app/sbrowser/infobars/SwipableOverlayView;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
