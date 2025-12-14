.class public Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mId:J

.field private mModifiedTime:J

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mId:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mUrl:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mModifiedTime:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mId:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mModifiedTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method
