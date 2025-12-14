.class public Lorg/chromium/components/input/InputUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/input/InputUtils$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sIsTransferInputToVizSupported:Ljava/lang/Boolean;


# direct methods
.method public static isTransferInputToVizSupported()Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/input/InputUtilsJni;->get()Lorg/chromium/components/input/InputUtils$Natives;

    sget-object v0, Lorg/chromium/components/input/InputUtils;->sIsTransferInputToVizSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/components/input/InputUtilsJni;->get()Lorg/chromium/components/input/InputUtils$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/components/input/InputUtils$Natives;->isTransferInputToVizSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/input/InputUtils;->sIsTransferInputToVizSupported:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lorg/chromium/components/input/InputUtils;->sIsTransferInputToVizSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
