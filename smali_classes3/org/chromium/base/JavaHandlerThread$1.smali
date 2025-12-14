.class Lorg/chromium/base/JavaHandlerThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/JavaHandlerThread;->startAndInitialize(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/JavaHandlerThread;

.field final synthetic val$nativeEvent:J

.field final synthetic val$nativeThread:J


# direct methods
.method public constructor <init>(Lorg/chromium/base/JavaHandlerThread;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/base/JavaHandlerThread$1;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeThread:J

    iput-wide p4, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lorg/chromium/base/JavaHandlerThreadJni;->get()Lorg/chromium/base/JavaHandlerThread$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeThread:J

    iget-wide v3, p0, Lorg/chromium/base/JavaHandlerThread$1;->val$nativeEvent:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/base/JavaHandlerThread$Natives;->initializeThread(JJ)V

    return-void
.end method
