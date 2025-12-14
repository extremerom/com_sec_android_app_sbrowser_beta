.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardInitialState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrivacyBoardStatus(ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTurnedOnBoardStatus(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;)V
    .locals 0

    const-string p0, "PrivacyBoardInitialState"

    const-string p1, "getTurnedOnBoardStatus"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getType()I
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
