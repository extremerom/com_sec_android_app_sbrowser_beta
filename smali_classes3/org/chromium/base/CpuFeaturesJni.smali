.class Lorg/chromium/base/CpuFeaturesJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/CpuFeatures$Natives;


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

.method public static get()Lorg/chromium/base/CpuFeatures$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/CpuFeaturesJni;

    invoke-direct {v0}, Lorg/chromium/base/CpuFeaturesJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCoreCount()I
    .locals 0

    invoke-static {}, LJ/N;->MOiBJ1qS()I

    move-result p0

    return p0
.end method

.method public getCpuFeatures()J
    .locals 2

    invoke-static {}, LJ/N;->ML0T8q1U()J

    move-result-wide v0

    return-wide v0
.end method
