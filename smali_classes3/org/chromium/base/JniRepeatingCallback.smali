.class public Lorg/chromium/base/JniRepeatingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLifetimeAssert:Lorg/chromium/base/LifetimeAssert;

.field mNativePointer:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lorg/chromium/base/LifetimeAssert;->create(Ljava/lang/Object;)Lorg/chromium/base/LifetimeAssert;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/JniRepeatingCallback;->mLifetimeAssert:Lorg/chromium/base/LifetimeAssert;

    iput-wide p1, p0, Lorg/chromium/base/JniRepeatingCallback;->mNativePointer:J

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lorg/chromium/base/JniRepeatingCallback;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/base/JniCallbackUtils;->runNativeCallback(Lorg/chromium/base/JniRepeatingCallback;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
