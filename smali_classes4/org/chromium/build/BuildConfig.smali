.class public Lorg/chromium/build/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static APK_ASSETS_SUFFIX:Ljava/lang/String; = null

.field public static APK_ASSETS_SUFFIXED_LIST:[Ljava/lang/String; = null

.field public static DISABLE_STRICT_MODE_CONTEXT:Z = false

.field public static ENABLE_ASSERTS:Z = false

.field public static ENABLE_DEBUG_LOGS:Z = true

.field public static IS_FOR_TEST:Z = false

.field public static IS_INCREMENTAL_INSTALL:Z = false

.field public static IS_UBSAN:Z = false

.field public static final LOGTAG_PREFIX:Ljava/lang/String; = "_LOGTAG_PREFIX"

.field public static MIN_SDK_VERSION:I = 0x1

.field public static R_STRING_PRODUCT_VERSION:I = 0x0

.field public static S_TERRACE_SUPPORT:Z = true

.field public static VERSION_CODE:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/chromium/build/BuildConfig;->APK_ASSETS_SUFFIXED_LIST:[Ljava/lang/String;

    return-void
.end method
