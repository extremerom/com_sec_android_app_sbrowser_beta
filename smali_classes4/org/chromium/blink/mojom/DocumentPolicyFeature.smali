.class public final Lorg/chromium/blink/mojom/DocumentPolicyFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DocumentPolicyFeature$EnumType;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final EXPECT_NO_LINKED_RESOURCES:I = 0xf

.field public static final FORCE_LOAD_AT_TOP:I = 0x3

.field public static final INCLUDE_JS_CALL_STACKS_IN_CRASH_REPORTS:I = 0xe

.field public static final JS_PROFILING:I = 0xb

.field public static final MAX_VALUE:I = 0xf

.field public static final MIN_VALUE:I = 0x0

.field public static final SYNC_XHR:I = 0xc


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/blink/mojom/DocumentPolicyFeature;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
