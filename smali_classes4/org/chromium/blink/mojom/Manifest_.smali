.class public final Lorg/chromium/blink/mojom/Manifest_;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Manifest_$TextDirection;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public backgroundColor:I

.field public captureLinks:I

.field public darkBackgroundColor:I

.field public darkThemeColor:I

.field public description:Lorg/chromium/mojo_base/mojom/String16;

.field public dir:I

.field public display:I

.field public displayOverride:[I

.field public fileHandlers:[Lorg/chromium/blink/mojom/ManifestFileHandler;

.field public gcmSenderId:Lorg/chromium/mojo_base/mojom/String16;

.field public hasBackgroundColor:Z

.field public hasCustomId:Z

.field public hasDarkBackgroundColor:Z

.field public hasDarkThemeColor:Z

.field public hasThemeColor:Z

.field public hasValidSpecifiedStartUrl:Z

.field public icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

.field public id:Lorg/chromium/url/mojom/Url;

.field public launchHandler:Lorg/chromium/blink/mojom/ManifestLaunchHandler;

.field public lockScreen:Lorg/chromium/blink/mojom/ManifestLockScreen;

.field public manifestUrl:Lorg/chromium/url/mojom/Url;

.field public name:Lorg/chromium/mojo_base/mojom/String16;

.field public noteTaking:Lorg/chromium/blink/mojom/ManifestNoteTaking;

.field public orientation:I

.field public permissionsPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

.field public preferRelatedApplications:Z

.field public protocolHandlers:[Lorg/chromium/blink/mojom/ManifestProtocolHandler;

.field public relatedApplications:[Lorg/chromium/blink/mojom/ManifestRelatedApplication;

.field public scope:Lorg/chromium/url/mojom/Url;

.field public scopeExtensions:[Lorg/chromium/blink/mojom/ManifestScopeExtension;

.field public screenshots:[Lorg/chromium/blink/mojom/ManifestScreenshot;

.field public shareTarget:Lorg/chromium/blink/mojom/ManifestShareTarget;

.field public shortName:Lorg/chromium/mojo_base/mojom/String16;

.field public shortcuts:[Lorg/chromium/blink/mojom/ManifestShortcutItem;

.field public startUrl:Lorg/chromium/url/mojom/Url;

.field public tabStrip:Lorg/chromium/blink/mojom/ManifestTabStrip;

.field public themeColor:I

.field public translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/mojo_base/mojom/String16;",
            "Lorg/chromium/blink/mojom/ManifestTranslationItem;",
            ">;"
        }
    .end annotation
.end field

.field public updateToken:Lorg/chromium/mojo_base/mojom/String16;

.field public version:Lorg/chromium/mojo_base/mojom/String16;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xf8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/Manifest_;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/Manifest_;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xf8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/Manifest_;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/Manifest_;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/Manifest_;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/Manifest_;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/Manifest_;->manifestUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->dir:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/Manifest_$TextDirection;->validate(I)V

    iget v4, v1, Lorg/chromium/blink/mojom/Manifest_;->dir:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/Manifest_$TextDirection;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->dir:I

    const/16 v4, 0x14

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/Manifest_;->hasCustomId:Z

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/Manifest_;->hasValidSpecifiedStartUrl:Z

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/Manifest_;->preferRelatedApplications:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/Manifest_;->hasThemeColor:Z

    const/4 v6, 0x4

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/Manifest_;->hasBackgroundColor:Z

    const/4 v6, 0x5

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/blink/mojom/Manifest_;->hasDarkThemeColor:Z

    const/4 v6, 0x6

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/Manifest_;->hasDarkBackgroundColor:Z

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->name:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->shortName:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0x28

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->description:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->id:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x38

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->startUrl:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->display:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/DisplayMode;->validate(I)V

    iget v4, v1, Lorg/chromium/blink/mojom/Manifest_;->display:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/DisplayMode;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->display:I

    const/16 v4, 0x44

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->orientation:I

    invoke-static {v4}, Lorg/chromium/device/mojom/ScreenOrientationLockType;->validate(I)V

    iget v4, v1, Lorg/chromium/blink/mojom/Manifest_;->orientation:I

    invoke-static {v4}, Lorg/chromium/device/mojom/ScreenOrientationLockType;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->orientation:I

    const/16 v4, 0x48

    const/4 v6, -0x1

    invoke-virtual {p0, v4, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->displayOverride:[I

    move v4, v2

    :goto_0
    iget-object v7, v1, Lorg/chromium/blink/mojom/Manifest_;->displayOverride:[I

    array-length v8, v7

    if-ge v4, v8, :cond_1

    aget v7, v7, v4

    invoke-static {v7}, Lorg/chromium/blink/mojom/DisplayMode;->validate(I)V

    iget-object v7, v1, Lorg/chromium/blink/mojom/Manifest_;->displayOverride:[I

    aget v8, v7, v4

    invoke-static {v8}, Lorg/chromium/blink/mojom/DisplayMode;->toKnownValue(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    const/16 v4, 0x50

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestImageResource;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    move v8, v2

    :goto_1
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestImageResource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestImageResource;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x58

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestScreenshot;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->screenshots:[Lorg/chromium/blink/mojom/ManifestScreenshot;

    move v8, v2

    :goto_2
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->screenshots:[Lorg/chromium/blink/mojom/ManifestScreenshot;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestScreenshot;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestScreenshot;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x60

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestShortcutItem;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->shortcuts:[Lorg/chromium/blink/mojom/ManifestShortcutItem;

    move v8, v2

    :goto_3
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_4

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->shortcuts:[Lorg/chromium/blink/mojom/ManifestShortcutItem;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestShortcutItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestShortcutItem;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/16 v4, 0x68

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/ManifestShareTarget;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestShareTarget;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->shareTarget:Lorg/chromium/blink/mojom/ManifestShareTarget;

    const/16 v4, 0x70

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestFileHandler;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->fileHandlers:[Lorg/chromium/blink/mojom/ManifestFileHandler;

    move v8, v2

    :goto_4
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_5

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->fileHandlers:[Lorg/chromium/blink/mojom/ManifestFileHandler;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestFileHandler;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestFileHandler;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/16 v4, 0x78

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestProtocolHandler;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->protocolHandlers:[Lorg/chromium/blink/mojom/ManifestProtocolHandler;

    move v8, v2

    :goto_5
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_6

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->protocolHandlers:[Lorg/chromium/blink/mojom/ManifestProtocolHandler;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestProtocolHandler;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestProtocolHandler;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    const/16 v4, 0x80

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestScopeExtension;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->scopeExtensions:[Lorg/chromium/blink/mojom/ManifestScopeExtension;

    move v8, v2

    :goto_6
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_7

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->scopeExtensions:[Lorg/chromium/blink/mojom/ManifestScopeExtension;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestScopeExtension;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestScopeExtension;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    const/16 v4, 0x88

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/ManifestLockScreen;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestLockScreen;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->lockScreen:Lorg/chromium/blink/mojom/ManifestLockScreen;

    const/16 v4, 0x90

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/ManifestNoteTaking;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestNoteTaking;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->noteTaking:Lorg/chromium/blink/mojom/ManifestNoteTaking;

    const/16 v4, 0x98

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/ManifestRelatedApplication;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->relatedApplications:[Lorg/chromium/blink/mojom/ManifestRelatedApplication;

    move v8, v2

    :goto_7
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_8

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->relatedApplications:[Lorg/chromium/blink/mojom/ManifestRelatedApplication;

    invoke-static {v9}, Lorg/chromium/blink/mojom/ManifestRelatedApplication;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestRelatedApplication;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    const/16 v4, 0xa0

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->themeColor:I

    const/16 v4, 0xa4

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->backgroundColor:I

    const/16 v4, 0xa8

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->gcmSenderId:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0xb0

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->scope:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0xb8

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->captureLinks:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/CaptureLinks;->validate(I)V

    iget v4, v1, Lorg/chromium/blink/mojom/Manifest_;->captureLinks:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/CaptureLinks;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->captureLinks:I

    const/16 v4, 0xbc

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/Manifest_;->darkThemeColor:I

    const/16 v4, 0xc0

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    iput-object v8, v1, Lorg/chromium/blink/mojom/Manifest_;->permissionsPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    move v8, v2

    :goto_8
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_9

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v1, Lorg/chromium/blink/mojom/Manifest_;->permissionsPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    invoke-static {v9}, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    const/16 v4, 0xc8

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/ManifestLaunchHandler;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestLaunchHandler;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/Manifest_;->launchHandler:Lorg/chromium/blink/mojom/ManifestLaunchHandler;

    const/16 v4, 0xd0

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Lorg/chromium/mojo_base/mojom/String16;

    move v10, v2

    :goto_9
    iget v11, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_a

    const/16 v11, 0x8

    invoke-static {v10, v11, v0, v7, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/ManifestTranslationItem;

    move v7, v2

    :goto_a
    iget v10, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v10, :cond_b

    const/16 v10, 0x8

    invoke-static {v7, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/blink/mojom/ManifestTranslationItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestTranslationItem;

    move-result-object v10

    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/blink/mojom/Manifest_;->translations:Ljava/util/Map;

    :goto_b
    if-ge v2, v8, :cond_c

    iget-object v0, v1, Lorg/chromium/blink/mojom/Manifest_;->translations:Ljava/util/Map;

    aget-object v3, v9, v2

    aget-object v4, v6, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/Manifest_;->darkBackgroundColor:I

    const/16 v0, 0xe0

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ManifestTabStrip;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestTabStrip;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/Manifest_;->tabStrip:Lorg/chromium/blink/mojom/ManifestTabStrip;

    const/16 v0, 0xe8

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/Manifest_;->version:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0xf0

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/Manifest_;->updateToken:Lorg/chromium/mojo_base/mojom/String16;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_c
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/Manifest_;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->manifestUrl:Lorg/chromium/url/mojom/Url;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->dir:I

    const/16 v12, 0x10

    invoke-virtual {v1, v2, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->hasCustomId:Z

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->hasValidSpecifiedStartUrl:Z

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->preferRelatedApplications:Z

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->hasThemeColor:Z

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->hasBackgroundColor:Z

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->hasDarkThemeColor:Z

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/Manifest_;->hasDarkBackgroundColor:Z

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->name:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->shortName:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->description:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->id:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->startUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->display:I

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->orientation:I

    const/16 v3, 0x44

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->displayOverride:[I

    const/16 v3, 0x48

    const/4 v14, -0x1

    invoke-virtual {v1, v2, v3, v11, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    const/16 v3, 0x50

    if-nez v2, :cond_0

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_0
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->screenshots:[Lorg/chromium/blink/mojom/ManifestScreenshot;

    const/16 v3, 0x58

    if-nez v2, :cond_2

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_2
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->screenshots:[Lorg/chromium/blink/mojom/ManifestScreenshot;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->shortcuts:[Lorg/chromium/blink/mojom/ManifestShortcutItem;

    const/16 v3, 0x60

    if-nez v2, :cond_4

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_4
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->shortcuts:[Lorg/chromium/blink/mojom/ManifestShortcutItem;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->shareTarget:Lorg/chromium/blink/mojom/ManifestShareTarget;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->fileHandlers:[Lorg/chromium/blink/mojom/ManifestFileHandler;

    const/16 v3, 0x70

    if-nez v2, :cond_6

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_6
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->fileHandlers:[Lorg/chromium/blink/mojom/ManifestFileHandler;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->protocolHandlers:[Lorg/chromium/blink/mojom/ManifestProtocolHandler;

    const/16 v3, 0x78

    if-nez v2, :cond_8

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_8
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->protocolHandlers:[Lorg/chromium/blink/mojom/ManifestProtocolHandler;

    array-length v5, v4

    if-ge v3, v5, :cond_9

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->scopeExtensions:[Lorg/chromium/blink/mojom/ManifestScopeExtension;

    const/16 v3, 0x80

    if-nez v2, :cond_a

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_a
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->scopeExtensions:[Lorg/chromium/blink/mojom/ManifestScopeExtension;

    array-length v5, v4

    if-ge v3, v5, :cond_b

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->lockScreen:Lorg/chromium/blink/mojom/ManifestLockScreen;

    const/16 v3, 0x88

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->noteTaking:Lorg/chromium/blink/mojom/ManifestNoteTaking;

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->relatedApplications:[Lorg/chromium/blink/mojom/ManifestRelatedApplication;

    const/16 v3, 0x98

    if-nez v2, :cond_c

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_d

    :cond_c
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_c
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->relatedApplications:[Lorg/chromium/blink/mojom/ManifestRelatedApplication;

    array-length v5, v4

    if-ge v3, v5, :cond_d

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->themeColor:I

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->backgroundColor:I

    const/16 v3, 0xa4

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->gcmSenderId:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0xa8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->scope:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0xb0

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->captureLinks:I

    const/16 v3, 0xb8

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->darkThemeColor:I

    const/16 v3, 0xbc

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->permissionsPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    const/16 v3, 0xc0

    if-nez v2, :cond_e

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_f

    :cond_e
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_e
    iget-object v4, v0, Lorg/chromium/blink/mojom/Manifest_;->permissionsPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    array-length v5, v4

    if-ge v3, v5, :cond_f

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->launchHandler:Lorg/chromium/blink/mojom/ManifestLaunchHandler;

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->translations:Ljava/util/Map;

    const/16 v3, 0xd0

    if-nez v2, :cond_10

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_13

    :cond_10
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/Manifest_;->translations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v15

    new-array v9, v15, [Lorg/chromium/mojo_base/mojom/String16;

    new-array v8, v15, [Lorg/chromium/blink/mojom/ManifestTranslationItem;

    iget-object v3, v0, Lorg/chromium/blink/mojom/Manifest_;->translations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v6, v9, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/blink/mojom/ManifestTranslationItem;

    aput-object v5, v8, v4

    add-int/2addr v4, v13

    goto :goto_10

    :cond_11
    invoke-virtual {v2, v15, v10, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v7, v11

    :goto_11
    if-ge v7, v15, :cond_12

    aget-object v6, v9, v7

    mul-int/lit8 v3, v7, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move/from16 v18, v7

    move v7, v11

    move-object/from16 v19, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v7

    move-object/from16 v9, v18

    move-object/from16 v8, v19

    goto :goto_11

    :cond_12
    move-object/from16 v19, v8

    invoke-virtual {v2, v15, v12, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_12
    if-ge v3, v15, :cond_13

    aget-object v4, v19, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_13
    :goto_13
    iget v2, v0, Lorg/chromium/blink/mojom/Manifest_;->darkBackgroundColor:I

    const/16 v3, 0xd8

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->tabStrip:Lorg/chromium/blink/mojom/ManifestTabStrip;

    const/16 v3, 0xe0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/Manifest_;->version:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0xe8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, v0, Lorg/chromium/blink/mojom/Manifest_;->updateToken:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v2, 0xf0

    invoke-virtual {v1, v0, v2, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
