.class Lorg/chromium/base/ApplicationStatusJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$Natives;


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

.method public static get()Lorg/chromium/base/ApplicationStatus$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/ApplicationStatusJni;

    invoke-direct {v0}, Lorg/chromium/base/ApplicationStatusJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MiAkQ_SU(I)V

    return-void
.end method
