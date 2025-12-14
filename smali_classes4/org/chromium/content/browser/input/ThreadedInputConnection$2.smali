.class Lorg/chromium/content/browser/input/ThreadedInputConnection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;
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

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->l(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    return-void
.end method
