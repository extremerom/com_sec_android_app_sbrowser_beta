.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/h;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/h;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
