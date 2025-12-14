.class public Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;
.super Lorg/chromium/base/FeatureMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field public static final CACHE_STYLUS_SETTINGS:Ljava/lang/String; = "CacheStylusSettings"

.field public static final USE_HANDWRITING_INITIATOR:Ljava/lang/String; = "UseHandwritingInitiator"

.field private static final sInstance:Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;-><init>()V

    sput-object v0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->sInstance:Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/FeatureMap;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;
    .locals 1

    sget-object v0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->sInstance:Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;

    return-object v0
.end method

.method public static isEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/FeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEnabledOrDefault(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/FeatureList;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public getNativeMap()J
    .locals 2

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMapJni;->get()Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap$Natives;->getNativeMap()J

    move-result-wide v0

    return-wide v0
.end method
