.class Lorg/chromium/content/browser/input/ThreadedInputConnection$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->deleteSurroundingText(II)Z
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

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$beforeLength:I

    iput p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->d(Lorg/chromium/content/browser/input/ThreadedInputConnection;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->j(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    :cond_0
    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_FONT:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$beforeLength:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    if-nez v3, :cond_1

    const/16 v1, 0x43

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    if-ne v3, v1, :cond_2

    const/16 v1, 0x70

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v1, v1, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    invoke-virtual {v1, v0, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->deleteSurroundingText(II)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$beforeLength:I

    iget p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    invoke-virtual {v0, v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->deleteSurroundingText(II)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$beforeLength:I

    iget p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    invoke-virtual {v0, v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->deleteSurroundingText(II)Z

    :goto_1
    return-void
.end method
