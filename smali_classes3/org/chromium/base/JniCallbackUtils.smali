.class final Lorg/chromium/base/JniCallbackUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/JniCallbackUtils$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static runNativeCallback(Lorg/chromium/base/JniOnceCallback;Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lorg/chromium/base/JniCallbackUtilsJni;->get()Lorg/chromium/base/JniCallbackUtils$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/JniOnceCallback;->mNativePointer:J

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/chromium/base/JniCallbackUtils$Natives;->onResult(JZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/JniOnceCallback;->mNativePointer:J

    return-void
.end method

.method public static runNativeCallback(Lorg/chromium/base/JniRepeatingCallback;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/JniCallbackUtilsJni;->get()Lorg/chromium/base/JniCallbackUtils$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/JniRepeatingCallback;->mNativePointer:J

    const/4 p0, 0x1

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/base/JniCallbackUtils$Natives;->onResult(JZLjava/lang/Object;)V

    return-void
.end method
