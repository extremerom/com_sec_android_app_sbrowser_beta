.class Lorg/chromium/base/JavaHandlerThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/JavaHandlerThread;->quitThreadSafely(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/JavaHandlerThread;

.field final synthetic val$nativeThread:J


# direct methods
.method public constructor <init>(Lorg/chromium/base/JavaHandlerThread;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/base/JavaHandlerThread$2;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread$2;->this$0:Lorg/chromium/base/JavaHandlerThread;

    invoke-static {v0}, Lorg/chromium/base/JavaHandlerThread;->a(Lorg/chromium/base/JavaHandlerThread;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-static {}, Lorg/chromium/base/JavaHandlerThreadJni;->get()Lorg/chromium/base/JavaHandlerThread$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/base/JavaHandlerThread$Natives;->onLooperStopped(J)V

    return-void
.end method
