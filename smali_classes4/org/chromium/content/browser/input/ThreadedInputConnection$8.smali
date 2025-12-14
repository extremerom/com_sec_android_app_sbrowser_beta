.class Lorg/chromium/content/browser/input/ThreadedInputConnection$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/16 v0, 0x42

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendSyntheticKeyPress(II)V

    return-void
.end method
