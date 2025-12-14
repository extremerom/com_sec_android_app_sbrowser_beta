.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncActionTakenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams$AsyncActionTakenType;
    }
.end annotation


# instance fields
.field public actionType:I

.field public canCloseTab:Z

.field public externalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

.field public targetUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->actionType:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->actionType:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->targetUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->externalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    return-void
.end method

.method private constructor <init>(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->actionType:I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->canCloseTab:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->externalNavigationParams:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    return-void
.end method

.method public static forExternalIntentLaunched(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;-><init>(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    return-object v0
.end method

.method public static forNavigate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    return-object v0
.end method

.method public static forNoAction()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;-><init>()V

    return-object v0
.end method
