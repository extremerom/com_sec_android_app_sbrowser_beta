.class public final synthetic Lorg/chromium/base/process_launcher/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/c;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/c;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->d(Lorg/chromium/base/process_launcher/ChildProcessConnection;Ljava/lang/Runnable;)V

    return-void
.end method
