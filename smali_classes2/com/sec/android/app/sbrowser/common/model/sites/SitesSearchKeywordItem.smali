.class public Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;
    }
.end annotation


# instance fields
.field private mIsPrivate:I

.field private mTime:J

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mTitle:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mTime:J

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mIsPrivate:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mType:I

    return-void
.end method


# virtual methods
.method public getIsPrivate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mIsPrivate:I

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->mType:I

    return p0
.end method
