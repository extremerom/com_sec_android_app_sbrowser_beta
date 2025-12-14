.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-void
.end method


# virtual methods
.method public getExceptionCode()Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;->mResultCode:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
