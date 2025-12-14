.class Lorg/chromium/content/browser/input/ThreadedInputConnection$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->deleteSurroundingTextInCodePoints(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$afterLength:I

.field final synthetic val$beforeLength:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->val$beforeLength:I

    iput p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->val$afterLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->d(Lorg/chromium/content/browser/input/ThreadedInputConnection;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->j(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->val$beforeLength:I

    iget p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;->val$afterLength:I

    invoke-virtual {v0, v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->deleteSurroundingTextInCodePoints(II)Z

    return-void
.end method
