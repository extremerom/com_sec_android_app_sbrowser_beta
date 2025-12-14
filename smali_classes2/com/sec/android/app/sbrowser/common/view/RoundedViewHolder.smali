.class public Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# instance fields
.field private mRoundMode:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->mRoundMode:I

    return-void
.end method


# virtual methods
.method public getRoundMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->mRoundMode:I

    return p0
.end method

.method public setRoundMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->mRoundMode:I

    return-void
.end method
