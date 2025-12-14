.class public Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;


# static fields
.field public static final TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Samsung Internet=6.0; android sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "; baseCL=xxx;"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->USER_AGENT:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;

    const/16 v1, 0x7148

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->TIMEOUT_29:Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestConfig;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->mTimeout:I

    return-void
.end method


# virtual methods
.method public configure(Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configure!! - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->USER_AGENT:Ljava/lang/String;

    const-string v2, "SCHttpRequestConfig"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    const-string v0, "x-sc-app-id"

    const-string v1, "4oe3617251"

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpRequestConfig;->mTimeout:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;->setRequestTimeout(I)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestBuilder;

    return-object p1
.end method
