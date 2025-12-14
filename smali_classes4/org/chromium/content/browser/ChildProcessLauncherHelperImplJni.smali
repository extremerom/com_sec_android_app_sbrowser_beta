.class Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onChildProcessDied(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MUukbEJR(I)V

    return-void
.end method

.method public onChildProcessStarted(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MXR$KaDS(JI)V

    return-void
.end method

.method public serviceGroupImportanceEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->MyYLH6Fg()Z

    move-result p0

    return p0
.end method

.method public setTerminationInfo(JIZZZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MJcoZ9pW(JIZZZ)V

    return-void
.end method
