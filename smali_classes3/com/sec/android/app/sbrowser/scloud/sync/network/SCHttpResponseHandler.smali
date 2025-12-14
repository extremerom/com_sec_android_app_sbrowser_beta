.class public abstract Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;
.source "SourceFile"


# static fields
.field private static final EXCEPTION_CODE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_HANDLED_EXCEPTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

.field private static final TAG:Ljava/lang/String; = "SCHttpResponseHandler"


# instance fields
.field private mRCodeCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->EXCEPTION_CODE_ARRAY:Landroid/util/SparseArray;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    sput-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->NOT_HANDLED_EXCEPTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_STORAGE_FULL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const/16 v2, 0x4e23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x98c7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_RESOURCE_NOT_EXISTS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    const/16 v2, 0x791a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x7d06

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4e20

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TIME_DIFFERENCE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/StringResponseHandler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->mRCodeCheck:Z

    return-void
.end method


# virtual methods
.method public handleResponse(ILjava/lang/String;)V
    .locals 5

    const-string v0, "RCODE ="

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x1aaf6

    if-ne v2, v3, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->TAG:Ljava/lang/String;

    const-string p1, "It\'s first"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->EXCEPTION_CODE_ARRAY:Landroid/util/SparseArray;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->NOT_HANDLED_EXCEPTION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    if-ne v3, v4, :cond_7

    const/16 v3, 0x190

    if-ne p1, v3, :cond_3

    const/16 p1, 0x4a40

    if-eq v2, p1, :cond_2

    const/16 p1, 0x4a4a

    if-eq v2, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_BAD_ACCESS_TOKEN:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const p1, 0x1c2d3

    if-eq v2, p1, :cond_6

    const p1, 0x3d0d4d

    if-eq v2, p1, :cond_6

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->mRCodeCheck:Z

    if-eqz p1, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_SERVER_ERROR:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->handleSCloudResponse(ILorg/json/JSONObject;)V

    move v1, v2

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_TOO_OLD_TIMESTAMP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    invoke-direct {p0, v3, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p0

    :cond_8
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->handleSCloudResponse(ILorg/json/JSONObject;)V

    :goto_3
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSCloudResponse err : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract handleSCloudResponse(ILorg/json/JSONObject;)V
.end method
