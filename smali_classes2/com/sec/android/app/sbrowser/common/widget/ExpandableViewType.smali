.class public Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDataIndex:I

.field private mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->mDataIndex:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->mType:I

    return-void
.end method


# virtual methods
.method public getDataIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->mDataIndex:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;->mType:I

    return p0
.end method
