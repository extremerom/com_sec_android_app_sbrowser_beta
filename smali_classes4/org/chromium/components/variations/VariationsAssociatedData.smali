.class public final Lorg/chromium/components/variations/VariationsAssociatedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/VariationsAssociatedData$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/components/variations/VariationsAssociatedDataJni;->get()Lorg/chromium/components/variations/VariationsAssociatedData$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/variations/VariationsAssociatedData$Natives;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
