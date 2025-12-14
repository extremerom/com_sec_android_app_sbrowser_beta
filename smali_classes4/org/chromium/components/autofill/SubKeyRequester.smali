.class public Lorg/chromium/components/autofill/SubKeyRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/SubKeyRequester$Natives;,
        Lorg/chromium/components/autofill/SubKeyRequester$GetSubKeysRequestDelegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mNativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/autofill/SubKeyRequester;->mNativePtr:J

    return-void
.end method
