.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DragListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001f\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\'\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;",
        "Landroid/view/View$OnDragListener;",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/view/DragEvent;",
        "event",
        "Ldb/r;",
        "onActionDragStarted",
        "(Landroid/view/View;Landroid/view/DragEvent;)V",
        "onActionDragLocation",
        "onActionDragEntered",
        "onActionDragExited",
        "onActionDragEnded",
        "onActionDrop",
        "",
        "width",
        "height",
        "setPosition",
        "(FFLandroid/view/DragEvent;)V",
        "",
        "onDrag",
        "(Landroid/view/View;Landroid/view/DragEvent;)Z",
        "Landroid/graphics/Rect;",
        "vaButtonRect",
        "showPreview",
        "(Landroid/graphics/Rect;)V",
        "hidePreview",
        "()V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDrop$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    return-void
.end method

.method private final onActionDragEnded(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_DRAG_ENDED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->hidePreview()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMIsOnRemoveButtonAnimating$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_DRAG_ENDED dropped outside"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMIsMediaAssistantButtonMoving$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMHideHandler$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMHideRunnable$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMHideHandler$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMHideRunnable$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final onActionDragEntered(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method private final onActionDragExited(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const p2, 0x7f0803eb

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->hidePreview()V

    return-void
.end method

.method private final onActionDragLocation(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 3

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMMainLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getVAViewRect(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/DragEvent;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;

    move-result-object p2

    const v2, 0x7f070910

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->getDimensionPixelSize(Landroid/app/Activity;I)I

    move-result p2

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const p2, 0x7f0803ec

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->hidePreview()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    const v0, 0x7f0803eb

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->showPreview(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private final onActionDragStarted(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMIsMediaAssistantButtonMoving$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayoutStub$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/ViewStub;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p2, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMButtonMainView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b06f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMButtonMainView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b06f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMRemoveButtonBin$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButtonLayout$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreviewStub$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/ViewStub;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$showRemoveButton(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    new-instance p2, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMPreviewPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isTalkBackEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMRemoveButton$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f140701

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f1402b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final onActionDrop(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->hidePreview()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$hideRemoveButton(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-direct {p0, p1, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->setPosition(FFLandroid/view/DragEvent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMInsideRemoveView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_DROP mRemoveButton"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/assistant/view/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/a;-><init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;I)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_DROP mMainLayout"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$moveToNewPosition(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    :goto_0
    return-void
.end method

.method private static final onActionDrop$lambda$0(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$removeViewFromParent(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->setVideoAssistantEnabled()V

    return-void
.end method

.method private final setPosition(FFLandroid/view/DragEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/DragEvent;->getY()F

    move-result p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAView$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    return-void
.end method


# virtual methods
.method public final hidePreview()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/assistant/common/MAUtils;->isMediaAssistantButtonDrag(Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDragExited(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDragEntered(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDragEnded(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDrop(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDragLocation(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->onActionDragStarted(Landroid/view/View;Landroid/view/DragEvent;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showPreview(Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "vaButtonRect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMLastVideoRect$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMLastVideoRect$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    if-ge p1, v1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    move v2, v3

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    :cond_4
    :goto_2
    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMLastVideoRect$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$retrievePosition(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$setMPreviewPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getVAViewWidth(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getVAViewHeight(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMPreviewPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMPreviewPosition$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$DragListener;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMVAPreview$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
