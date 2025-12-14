.class Lorg/chromium/base/process_launcher/ChildProcessLauncher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildProcessConnection$ConnectionCallback;


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

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessLauncher$3;->this$0:Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    invoke-static {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->f(Lorg/chromium/base/process_launcher/ChildProcessLauncher;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method
