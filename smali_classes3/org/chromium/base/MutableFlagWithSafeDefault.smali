.class public Lorg/chromium/base/MutableFlagWithSafeDefault;
.super Lorg/chromium/base/Flag;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mDefaultValue:Z


# direct methods
.method public constructor <init>(Lorg/chromium/base/FeatureMap;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/Flag;-><init>(Lorg/chromium/base/FeatureMap;Ljava/lang/String;)V

    iput-boolean p3, p0, Lorg/chromium/base/MutableFlagWithSafeDefault;->mDefaultValue:Z

    return-void
.end method
