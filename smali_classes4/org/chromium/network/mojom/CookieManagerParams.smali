.class public final Lorg/chromium/network/mojom/CookieManagerParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowFileSchemeCookies:Z

.field public blockThirdPartyCookies:Z

.field public contentSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;",
            ">;"
        }
    .end annotation
.end field

.field public cookieAccessDelegateType:I

.field public isAntiTrackingEnabled:Z

.field public matchingSchemeCookiesAllowedSchemes:[Ljava/lang/String;

.field public mitigationsEnabledFor3pcd:Z

.field public secureOriginCookiesAllowedSchemes:[Ljava/lang/String;

.field public settingsForTrackerDomainCookieAccess:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

.field public shouldBlockThirdPartyCookiesByAntiTracking:Z

.field public thirdPartyCookiesAllowedSchemes:[Ljava/lang/String;

.field public trackingProtectionEnabledFor3pcd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/CookieManagerParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/CookieManagerParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->blockThirdPartyCookies:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->trackingProtectionEnabledFor3pcd:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->mitigationsEnabledFor3pcd:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->allowFileSchemeCookies:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->isAntiTrackingEnabled:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->shouldBlockThirdPartyCookiesByAntiTracking:Z

    iput p1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->cookieAccessDelegateType:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CookieManagerParams;
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/CookieManagerParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/CookieManagerParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/CookieManagerParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->blockThirdPartyCookies:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->trackingProtectionEnabledFor3pcd:Z

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->mitigationsEnabledFor3pcd:Z

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->allowFileSchemeCookies:Z

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->isAntiTrackingEnabled:Z

    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->shouldBlockThirdPartyCookiesByAntiTracking:Z

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->cookieAccessDelegateType:I

    invoke-static {v3}, Lorg/chromium/network/mojom/CookieAccessDelegateType;->validate(I)V

    iget v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->cookieAccessDelegateType:I

    invoke-static {v3}, Lorg/chromium/network/mojom/CookieAccessDelegateType;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->cookieAccessDelegateType:I

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v2

    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/components/content_settings/ContentSettingsType;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/components/content_settings/ContentSettingsType;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v4, v6

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    move v8, v2

    :goto_1
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    aput-object v11, v7, v8

    move v11, v2

    :goto_2
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_2

    const/16 v12, 0x8

    invoke-static {v11, v12, v0, v9, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v12

    aget-object v13, v7, v8

    invoke-static {v12}, Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    move-result-object v12

    aput-object v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/network/mojom/CookieManagerParams;->contentSettings:Ljava/util/Map;

    move v3, v2

    :goto_3
    array-length v4, v6

    if-ge v3, v4, :cond_4

    iget-object v4, v1, Lorg/chromium/network/mojom/CookieManagerParams;->contentSettings:Ljava/util/Map;

    aget v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v7, v3

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/network/mojom/CookieManagerParams;->secureOriginCookiesAllowedSchemes:[Ljava/lang/String;

    move v6, v2

    :goto_4
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_5

    iget-object v7, v1, Lorg/chromium/network/mojom/CookieManagerParams;->secureOriginCookiesAllowedSchemes:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/network/mojom/CookieManagerParams;->matchingSchemeCookiesAllowedSchemes:[Ljava/lang/String;

    move v6, v2

    :goto_5
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_6

    iget-object v7, v1, Lorg/chromium/network/mojom/CookieManagerParams;->matchingSchemeCookiesAllowedSchemes:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/network/mojom/CookieManagerParams;->thirdPartyCookiesAllowedSchemes:[Ljava/lang/String;

    move v6, v2

    :goto_6
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_7

    iget-object v7, v1, Lorg/chromium/network/mojom/CookieManagerParams;->thirdPartyCookiesAllowedSchemes:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    iput-object v5, v1, Lorg/chromium/network/mojom/CookieManagerParams;->settingsForTrackerDomainCookieAccess:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    move v5, v2

    :goto_7
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_8

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/network/mojom/CookieManagerParams;->settingsForTrackerDomainCookieAccess:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    invoke-static {v6}, Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_8
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 13

    sget-object v0, Lorg/chromium/network/mojom/CookieManagerParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->blockThirdPartyCookies:Z

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->trackingProtectionEnabledFor3pcd:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v8, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->mitigationsEnabledFor3pcd:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->allowFileSchemeCookies:Z

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->isAntiTrackingEnabled:Z

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->shouldBlockThirdPartyCookiesByAntiTracking:Z

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->cookieAccessDelegateType:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->contentSettings:Ljava/util/Map;

    const/16 v2, 0x10

    const/4 v10, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/network/mojom/CookieManagerParams;->contentSettings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [I

    new-array v5, v3, [[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    iget-object v6, p0, Lorg/chromium/network/mojom/CookieManagerParams;->contentSettings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v9

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v4, v7

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    aput-object v11, v5, v7

    add-int/2addr v7, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, v8, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v0, v3, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v2, v5, v1

    if-nez v2, :cond_2

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v8

    invoke-virtual {v0, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v2, v2

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v8

    invoke-virtual {v0, v2, v4, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v9

    :goto_2
    aget-object v6, v5, v1

    array-length v7, v6

    if-ge v4, v7, :cond_3

    aget-object v6, v6, v4

    mul-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v8

    invoke-virtual {v2, v6, v7, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->secureOriginCookiesAllowedSchemes:[Ljava/lang/String;

    const/16 v1, 0x18

    if-nez v0, :cond_5

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_6

    :cond_5
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_5
    iget-object v1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->secureOriginCookiesAllowedSchemes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_6

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_5

    :cond_6
    :goto_6
    iget-object v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->matchingSchemeCookiesAllowedSchemes:[Ljava/lang/String;

    const/16 v1, 0x20

    if-nez v0, :cond_7

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_8

    :cond_7
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_7
    iget-object v1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->matchingSchemeCookiesAllowedSchemes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_8

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_7

    :cond_8
    :goto_8
    iget-object v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->thirdPartyCookiesAllowedSchemes:[Ljava/lang/String;

    const/16 v1, 0x28

    if-nez v0, :cond_9

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_a

    :cond_9
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_9
    iget-object v1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->thirdPartyCookiesAllowedSchemes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_a

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_9

    :cond_a
    :goto_a
    iget-object v0, p0, Lorg/chromium/network/mojom/CookieManagerParams;->settingsForTrackerDomainCookieAccess:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    const/16 v1, 0x30

    if-nez v0, :cond_b

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_c

    :cond_b
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v9

    :goto_b
    iget-object v1, p0, Lorg/chromium/network/mojom/CookieManagerParams;->settingsForTrackerDomainCookieAccess:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    aget-object v1, v1, v0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v8

    invoke-virtual {p1, v1, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    return-void
.end method
