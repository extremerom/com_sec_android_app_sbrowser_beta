.class public Lorg/chromium/components/payments/PaymentFeatureMap;
.super Lorg/chromium/base/FeatureMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/payments/PaymentFeatureMap$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final sInstance:Lorg/chromium/components/payments/PaymentFeatureMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/payments/PaymentFeatureMap;

    invoke-direct {v0}, Lorg/chromium/components/payments/PaymentFeatureMap;-><init>()V

    sput-object v0, Lorg/chromium/components/payments/PaymentFeatureMap;->sInstance:Lorg/chromium/components/payments/PaymentFeatureMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/FeatureMap;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/payments/PaymentFeatureMap;
    .locals 1

    sget-object v0, Lorg/chromium/components/payments/PaymentFeatureMap;->sInstance:Lorg/chromium/components/payments/PaymentFeatureMap;

    return-object v0
.end method

.method public static isEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/payments/PaymentFeatureMap;->getInstance()Lorg/chromium/components/payments/PaymentFeatureMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/base/FeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getNativeMap()J
    .locals 2

    invoke-static {}, Lorg/chromium/components/payments/PaymentFeatureMapJni;->get()Lorg/chromium/components/payments/PaymentFeatureMap$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/payments/PaymentFeatureMap$Natives;->getNativeMap()J

    move-result-wide v0

    return-wide v0
.end method
