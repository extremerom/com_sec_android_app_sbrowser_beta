.class public final synthetic Lorg/chromium/base/process_launcher/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/memory/MemoryPressureCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/a;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method


# virtual methods
.method public final onPressure(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/a;->a:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p1, p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->c(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method
