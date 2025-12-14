.class Lorg/chromium/content/browser/BrowserStartupControllerImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/BrowserStartupControllerImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/BrowserStartupControllerImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/BrowserStartupControllerImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public flushStartupTasks()V
    .locals 0

    invoke-static {}, LJ/N;->M9iLjy6T()V

    return-void
.end method

.method public setCommandLineFlags(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MwoPtAzD(Z)V

    return-void
.end method
