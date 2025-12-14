.class public Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final AUTHORITY_URI_PDI:Landroid/net/Uri;

.field public static ERR_CODE_EMPTY_RESULT:I

.field public static ERR_CODE_NOT_AVAILABLE:I

.field public static KEY_FIELD:Ljava/lang/String;

.field public static KEY_MODE:Ljava/lang/String;

.field public static KEY_OLD_VALUE:Ljava/lang/String;

.field public static KEY_QUERY_ARGS_SORT:Ljava/lang/String;

.field public static KEY_QUERY_FALLBACK:Ljava/lang/String;

.field public static KEY_QUERY_INJECTED_OBJECT:Ljava/lang/String;

.field public static KEY_QUERY_JSON:Ljava/lang/String;

.field public static KEY_QUERY_JSON_ARGS:Ljava/lang/String;

.field public static KEY_QUERY_PARAMS_SORT:Ljava/lang/String;

.field public static KEY_QUERY_TEMPLATE_NAME:Ljava/lang/String;

.field public static KEY_VALUE:Ljava/lang/String;

.field public static MODE_ADD:Ljava/lang/String;

.field public static MODE_DELETE:Ljava/lang/String;

.field public static MODE_OVERRIDE:Ljava/lang/String;

.field public static MODE_RENAME:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static final PUBLIC_URI:Landroid/net/Uri;

.field public static final V1_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://com.samsung.android.scs.ai.search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.smartsuggestions.search"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->AUTHORITY_URI_PDI:Landroid/net/Uri;

    const-string v2, "v1"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->V1_URI:Landroid/net/Uri;

    sget v2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v3, 0x13a74

    const-string v4, "v2"

    if-lt v2, v3, :cond_0

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    const-string v0, "com.sec.android.app.sbrowser.beta"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "query-args-sort"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_ARGS_SORT:Ljava/lang/String;

    const-string v0, "query-sort-params"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_PARAMS_SORT:Ljava/lang/String;

    const-string v0, "query-json"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_JSON:Ljava/lang/String;

    const-string v0, "query-json-args"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_JSON_ARGS:Ljava/lang/String;

    const-string v0, "query-template-name"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_TEMPLATE_NAME:Ljava/lang/String;

    const-string v0, "query-injected-obj"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_INJECTED_OBJECT:Ljava/lang/String;

    const-string v0, "matched-fallback-query"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_FALLBACK:Ljava/lang/String;

    const-string v0, "$field"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_FIELD:Ljava/lang/String;

    const-string v0, "$value"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_VALUE:Ljava/lang/String;

    const-string v0, "$oldvalue"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_OLD_VALUE:Ljava/lang/String;

    const-string v0, "$mode"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_MODE:Ljava/lang/String;

    const-string v0, "add"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->MODE_ADD:Ljava/lang/String;

    const-string v0, "delete"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->MODE_DELETE:Ljava/lang/String;

    const-string v0, "override"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->MODE_OVERRIDE:Ljava/lang/String;

    const-string v0, "rename"

    sput-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->MODE_RENAME:Ljava/lang/String;

    const/16 v0, -0x3e8

    sput v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_EMPTY_RESULT:I

    const/16 v0, -0x7d0

    sput v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_NOT_AVAILABLE:I

    return-void
.end method
