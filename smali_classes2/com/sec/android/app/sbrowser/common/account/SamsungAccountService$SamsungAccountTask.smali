.class Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungAccountTask"
.end annotation


# instance fields
.field mCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

.field mExpiredToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mIsReqConsent:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;ZLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;->mCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;->mIsReqConsent:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;->mExpiredToken:Ljava/lang/String;

    return-void
.end method
