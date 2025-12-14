.class public Lorg/chromium/base/FeatureListJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/FeatureList$Natives;


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

.method public static get()Lorg/chromium/base/FeatureList$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/FeatureListJni;

    invoke-direct {v0}, Lorg/chromium/base/FeatureListJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isInitialized()Z
    .locals 0

    invoke-static {}, LJ/N;->MFTJCvBh()Z

    move-result p0

    return p0
.end method
