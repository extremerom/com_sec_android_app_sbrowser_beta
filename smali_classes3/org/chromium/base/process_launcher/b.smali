.class public final synthetic Lorg/chromium/base/process_launcher/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/memory/SelfFreezeCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/b;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method


# virtual methods
.method public final onSelfFreeze()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/b;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->b(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method
