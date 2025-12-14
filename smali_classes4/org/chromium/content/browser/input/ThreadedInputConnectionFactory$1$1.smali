.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    iget-object v1, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    invoke-static {v0, p0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->d(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;)V

    return-void
.end method
