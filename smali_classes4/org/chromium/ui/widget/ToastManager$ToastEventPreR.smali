.class Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/widget/ToastManager$ToastEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/ToastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastEventPreR"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPostToastRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;->mPostToastRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onShow(Lorg/chromium/ui/widget/Toast;)V
    .locals 3

    invoke-virtual {p1}, Lorg/chromium/ui/widget/Toast;->getDuration()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x7d0

    goto :goto_0

    :cond_0
    const/16 p1, 0xdac

    :goto_0
    iget-object v0, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/chromium/ui/widget/ToastManager$ToastEventPreR;->mPostToastRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
