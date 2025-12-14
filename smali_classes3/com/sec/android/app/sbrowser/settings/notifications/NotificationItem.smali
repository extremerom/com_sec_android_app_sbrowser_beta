.class public Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mDescreption:Ljava/lang/String;

.field private mIcon:[B

.field private mIsSelected:Z

.field private mPersID:Ljava/lang/String;

.field private mRead:I

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVisitTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mDescreption:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mVisitTime:J

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mPersID:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mIcon:[B

    iput p8, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mRead:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mIsSelected:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mBackgroundColor:I

    return-void
.end method


# virtual methods
.method public getDescreption()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mDescreption:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mIcon:[B

    return-object p0
.end method

.method public getIsRead()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mRead:I

    return p0
.end method

.method public getPersID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mPersID:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVisitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mVisitTime:J

    return-wide v0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mIsSelected:Z

    return p0
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;->mIsSelected:Z

    return-void
.end method
