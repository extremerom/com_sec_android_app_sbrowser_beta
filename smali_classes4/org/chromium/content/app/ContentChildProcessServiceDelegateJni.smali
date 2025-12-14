.class Lorg/chromium/content/app/ContentChildProcessServiceDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;


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

.method public static get()Lorg/chromium/content/app/ContentChildProcessServiceDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/app/ContentChildProcessServiceDelegateJni;

    invoke-direct {v0}, Lorg/chromium/content/app/ContentChildProcessServiceDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initChildProcess(Lorg/chromium/content/app/ContentChildProcessServiceDelegate;IJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MBlO3kR9(Ljava/lang/Object;IJ)V

    return-void
.end method

.method public initMemoryPressureListener()V
    .locals 0

    invoke-static {}, LJ/N;->M8I$ZbIR()V

    return-void
.end method

.method public retrieveFileDescriptorsIdsToKeys(Lorg/chromium/content/app/ContentChildProcessServiceDelegate;)V
    .locals 0

    invoke-static {p1}, LJ/N;->M0zXFFiu(Ljava/lang/Object;)V

    return-void
.end method
