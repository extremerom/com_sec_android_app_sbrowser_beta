.class Lorg/chromium/base/process_launcher/ChildProcessLauncher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildProcessConnection$ZygoteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/process_launcher/ChildProcessLauncher;->setupConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/process_launcher/ChildProcessLauncher;


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher$2;->this$0:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->b(Lorg/chromium/base/process_launcher/ChildProcessLauncher;)Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;->onReceivedZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V

    return-void
.end method
