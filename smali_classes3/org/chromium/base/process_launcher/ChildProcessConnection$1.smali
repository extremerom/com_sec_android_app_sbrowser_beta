.class Lorg/chromium/base/process_launcher/ChildProcessConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/process_launcher/ChildProcessConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildServiceConnectionFactory;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConnection(Landroid/content/Intent;ILorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)Lorg/chromium/base/process_launcher/ChildServiceConnection;
    .locals 9

    new-instance v8, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->j(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Landroid/os/Handler;

    move-result-object v4

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$1;->this$0:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->i(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v0, v8

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/base/process_launcher/ChildServiceConnectionImpl;-><init>(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Lorg/chromium/base/process_launcher/ChildServiceConnectionDelegate;Ljava/lang/String;)V

    return-object v8
.end method
