.class public Lorg/chromium/base/BaseFeatureMapJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/BaseFeatureMap$Natives;


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

.method public static get()Lorg/chromium/base/BaseFeatureMap$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/BaseFeatureMapJni;

    invoke-direct {v0}, Lorg/chromium/base/BaseFeatureMapJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getNativeMap()J
    .locals 2

    invoke-static {}, LJ/N;->MshdYEWu()J

    move-result-wide v0

    return-wide v0
.end method
