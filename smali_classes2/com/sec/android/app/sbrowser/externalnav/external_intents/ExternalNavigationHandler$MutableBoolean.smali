.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBoolean"
.end annotation


# instance fields
.field private mValue:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;->mValue:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;->mValue:Ljava/lang/Boolean;

    return-object p0
.end method

.method public set(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;->mValue:Ljava/lang/Boolean;

    return-void
.end method
