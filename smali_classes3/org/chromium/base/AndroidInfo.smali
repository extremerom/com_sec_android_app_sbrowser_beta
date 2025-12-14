.class public final Lorg/chromium/base/AndroidInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/AndroidInfo$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static getAndroidBuildFingerprint()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidSupportedAbis()Ljava/lang/String;
    .locals 2

    const-string v0, ", "

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebugAndroid()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static nativeReadyForFields()V
    .locals 20
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/AndroidInfoJni;->get()Lorg/chromium/base/AndroidInfo$Natives;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/AndroidInfo;->getAndroidBuildFingerprint()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v11, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    if-lt v14, v12, :cond_0

    invoke-static {}, Lj9/a;->p()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_0
    const-string v12, ""

    :goto_0
    const-string v13, ", "

    sget-object v15, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v13, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lorg/chromium/base/AndroidInfo;->isDebugAndroid()Z

    move-result v15

    move/from16 v16, v15

    const/16 v15, 0x22

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-lt v14, v15, :cond_1

    move/from16 v19, v18

    goto :goto_1

    :cond_1
    move/from16 v19, v17

    :goto_1
    const/16 v15, 0x21

    if-lt v14, v15, :cond_2

    move/from16 v17, v18

    :cond_2
    move/from16 v15, v16

    move/from16 v16, v19

    invoke-interface/range {v0 .. v17}, Lorg/chromium/base/AndroidInfo$Natives;->fillFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-void
.end method
