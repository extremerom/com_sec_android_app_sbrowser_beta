.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideUrlLoadingResult"
.end annotation


# instance fields
.field mAsyncActionType:I

.field mExternalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

.field mResultType:I

.field mTargetUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mResultType:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mAsyncActionType:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mTargetUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mExternalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    return-void
.end method

.method public static forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(II)V

    return-object v0
.end method

.method public static forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(I)V

    return-object v0
.end method

.method public static forForceLoadScheme()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(I)V

    return-object v0
.end method

.method public static forNavigateTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    return-object v0
.end method

.method public static forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(I)V

    return-object v0
.end method

.method public static forQuickAccess()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getExternalNavigationParams()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mExternalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    return-object p0
.end method

.method public getResultType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mResultType:I

    return p0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->mTargetUrl:Ljava/lang/String;

    return-object p0
.end method
