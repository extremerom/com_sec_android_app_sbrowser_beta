.class public final Lcom/samsung/android/sdk/aisuggestion/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final CORE_SCHEMA_VERSION:Ljava/lang/Long;

.field public static final DEBUG:Z = false

.field public static final DeepSkyLibraryAiSuggestionVersionName:Ljava/lang/String; = "1.6.13"

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sdk.aisuggestion"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/BuildConfig;->CORE_SCHEMA_VERSION:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
