.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo$IDs;
    }
.end annotation


# instance fields
.field private final mId:I

.field private final mIndex:I

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->mId:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->mIndex:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureLayoutIndex;->getLayoutId(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->mLayoutId:I

    return-void
.end method

.method public static maxFeatureItem()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method


# virtual methods
.method public id()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->mId:I

    return p0
.end method

.method public layoutId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->mLayoutId:I

    return p0
.end method

.method public layoutIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;->mIndex:I

    return p0
.end method
