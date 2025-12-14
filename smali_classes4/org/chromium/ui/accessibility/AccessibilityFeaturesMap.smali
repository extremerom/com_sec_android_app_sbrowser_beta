.class public Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap;
.super Lorg/chromium/base/FeatureMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final sInstance:Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap;

    invoke-direct {v0}, Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap;-><init>()V

    sput-object v0, Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap;->sInstance:Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap;

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

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityFeaturesMapJni;->get()Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/ui/accessibility/AccessibilityFeaturesMap$Natives;->getNativeMap()J

    move-result-wide v0

    return-wide v0
.end method
