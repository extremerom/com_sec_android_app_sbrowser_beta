.class public Lorg/chromium/content/browser/SpareChildConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

.field private final mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

.field private mConnectionReady:Z

.field private mConnectionServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    new-instance v0, Lorg/chromium/content/browser/SpareChildConnection$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/SpareChildConnection$1;-><init>(Lorg/chromium/content/browser/SpareChildConnection;)V

    invoke-virtual {p2, p1, p3, v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->allocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/SpareChildConnection;)Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/SpareChildConnection;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionReady:Z

    return-void
.end method

.method private clearConnection()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionReady:Z

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/SpareChildConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/SpareChildConnection;->clearConnection()V

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-object p0
.end method

.method public getConnection(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/SpareChildConnection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator;

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    iget-object p1, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iget-boolean v0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionReady:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Lorg/chromium/content/browser/SpareChildConnection$2;

    invoke-direct {v0, p0, p2}, Lorg/chromium/content/browser/SpareChildConnection$2;-><init>(Lorg/chromium/content/browser/SpareChildConnection;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)V

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/SpareChildConnection;->clearConnection()V

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/SpareChildConnection;->mConnectionServiceCallback:Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
