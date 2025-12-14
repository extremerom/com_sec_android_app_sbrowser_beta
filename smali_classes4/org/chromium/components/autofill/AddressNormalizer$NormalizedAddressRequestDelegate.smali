.class public interface abstract Lorg/chromium/components/autofill/AddressNormalizer$NormalizedAddressRequestDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AddressNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NormalizedAddressRequestDelegate"
.end annotation


# virtual methods
.method public abstract onAddressNormalized(Lorg/chromium/components/autofill/AutofillProfile;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onCouldNotNormalize(Lorg/chromium/components/autofill/AutofillProfile;)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
