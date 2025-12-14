.class public Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAppId:I

.field private mAppName:Ljava/lang/String;

.field private final mCount:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsBlocked:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mAppId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mAppName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mIsBlocked:Z

    iput p6, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mCount:I

    iput-wide p7, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mTime:J

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mAppId:I

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mIsBlocked:Z

    return p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mCount:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mTime:J

    return-wide v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setBlocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->mIsBlocked:Z

    return-void
.end method
