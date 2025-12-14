.class public final Lorg/chromium/net/GURLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/GURLUtils$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/net/GURLUtilsJni;->get()Lorg/chromium/net/GURLUtils$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/net/GURLUtils$Natives;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
