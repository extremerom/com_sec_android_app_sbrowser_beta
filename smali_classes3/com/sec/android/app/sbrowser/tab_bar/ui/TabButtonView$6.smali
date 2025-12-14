.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[onClose] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabButtonView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onClose(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public onDrag(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onDrag] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabButtonView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onDrag(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V

    return-void
.end method

.method public onLongClick(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onLongClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method
