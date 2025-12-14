.class public Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mToday:I

.field private final mTotal:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;->mToday:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;->mTotal:I

    return-void
.end method


# virtual methods
.method public getToday()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;->mToday:I

    return p0
.end method

.method public getTotal()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;->mTotal:I

    return p0
.end method
