.class public final Lorg/chromium/components/content_settings/ProviderType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/content_settings/ProviderType$EnumType;
    }
.end annotation


# static fields
.field public static final CUSTOM_EXTENSION_PROVIDER:I = 0x3

.field public static final DEFAULT_PROVIDER:I = 0xb

.field public static final INSTALLED_WEBAPP_PROVIDER:I = 0x4

.field public static final JAVASCRIPT_OPTIMIZER_ANDROID_PROVIDER:I = 0x8

.field public static final MAX_VALUE:I = 0xc

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0xc

.field public static final NOTIFICATION_ANDROID_PROVIDER:I = 0x5

.field public static final ONE_TIME_PERMISSION_PROVIDER:I = 0x6

.field public static final OTHER_PROVIDER_FOR_TESTS:I = 0xa

.field public static final POLICY_PROVIDER:I = 0x1

.field public static final PREF_PROVIDER:I = 0x7

.field public static final PROVIDER_FOR_TESTS:I = 0x9

.field public static final SUPERVISED_PROVIDER:I = 0x2

.field public static final WEBUI_ALLOWLIST_PROVIDER:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/components/content_settings/ProviderType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
