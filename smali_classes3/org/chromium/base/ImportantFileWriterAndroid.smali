.class public Lorg/chromium/base/ImportantFileWriterAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ImportantFileWriterAndroid$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static writeFileAtomically(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ImportantFileWriterAndroidJni;->get()Lorg/chromium/base/ImportantFileWriterAndroid$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/ImportantFileWriterAndroid$Natives;->writeFileAtomically(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method
