.class public final Lorg/chromium/components/signin/SigninFeatureMap;
.super Lorg/chromium/base/FeatureMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/SigninFeatureMap$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final sInstance:Lorg/chromium/components/signin/SigninFeatureMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/signin/SigninFeatureMap;

    invoke-direct {v0}, Lorg/chromium/components/signin/SigninFeatureMap;-><init>()V

    sput-object v0, Lorg/chromium/components/signin/SigninFeatureMap;->sInstance:Lorg/chromium/components/signin/SigninFeatureMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/FeatureMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getNativeMap()J
    .locals 2

    invoke-static {}, Lorg/chromium/components/signin/SigninFeatureMapJni;->get()Lorg/chromium/components/signin/SigninFeatureMap$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/signin/SigninFeatureMap$Natives;->getNativeMap()J

    move-result-wide v0

    return-wide v0
.end method
