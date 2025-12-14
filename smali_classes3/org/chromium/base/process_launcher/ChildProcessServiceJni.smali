.class Lorg/chromium/base/process_launcher/ChildProcessServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/ChildProcessService$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/process_launcher/ChildProcessService$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/process_launcher/ChildProcessServiceJni;

    invoke-direct {v0}, Lorg/chromium/base/process_launcher/ChildProcessServiceJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dumpProcessStack()V
    .locals 0

    invoke-static {}, LJ/N;->M6Y7Jzgj()V

    return-void
.end method

.method public exitChildProcess()V
    .locals 0

    invoke-static {}, LJ/N;->McvJWQ0j()V

    return-void
.end method

.method public onSelfFreeze()V
    .locals 0

    invoke-static {}, LJ/N;->MNIhsn50()V

    return-void
.end method

.method public registerFileDescriptors([Ljava/lang/String;[I[I[J[J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Ma6rsNQO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
