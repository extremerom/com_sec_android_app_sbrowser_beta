.class public abstract Lorg/chromium/base/Features;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/Features$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/Features;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getFeaturePointer()J
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/Features;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/base/Features;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/FeatureOverrides;->getTestValueForFeatureStrict(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/base/FeaturesJni;->get()Lorg/chromium/base/Features$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/base/Features;->getFeaturePointer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/chromium/base/Features$Natives;->isEnabled(J)Z

    move-result p0

    return p0
.end method
