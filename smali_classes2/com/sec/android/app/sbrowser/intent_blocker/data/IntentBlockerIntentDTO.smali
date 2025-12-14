.class public Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsCustomTabIntent:Z

.field private mPackageName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isCustomTabIntent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mIsCustomTabIntent:Z

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIsCustomTabIntent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mIsCustomTabIntent:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerIntentDTO;->mUrl:Ljava/lang/String;

    return-void
.end method
