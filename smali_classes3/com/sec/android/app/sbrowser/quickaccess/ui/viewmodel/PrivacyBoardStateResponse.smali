.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIsSuccess:Z

.field private final mStatus:Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->mStatus:Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->mStatus:Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;->mIsSuccess:Z

    return p0
.end method
