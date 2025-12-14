.class Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/ClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation


# instance fields
.field public final disconnectCallback:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;

.field public highConfidencePrediction:Z

.field public lowConfidencePrediction:Z

.field private mCustomTabsCallback:LH/c;

.field private mKeepAliveConnection:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

.field private mLastMayLaunchUrlTimestamp:J

.field public final mLinkedOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/terrace/browser/customtabs/TerraceOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPredictedUrl:Ljava/lang/String;

.field private mWasSessionDisconnectStatusLogged:Z

.field public originVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

.field public final postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

.field public final serviceConnection:LH/C;

.field public final uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILH/c;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;LH/C;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mLinkedOrigins:Ljava/util/Set;

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->uid:I

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mCustomTabsCallback:LH/c;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->disconnectCallback:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->postMessageHandler:Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->serviceConnection:LH/C;

    if-eqz p5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mPackageName:Ljava/lang/String;

    invoke-virtual {p6, p0}, LH/C;->setPackageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mWasSessionDisconnectStatusLogged:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mWasSessionDisconnectStatusLogged:Z

    return-void
.end method

.method private static getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, p0, v0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getCustomTabsCallback()LH/c;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mCustomTabsCallback:LH/c;

    return-object p0
.end method

.method public getKeepAliveConnection()Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mKeepAliveConnection:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomTabsCallback(LH/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mCustomTabsCallback:LH/c;

    return-void
.end method

.method public setKeepAliveConnection(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mKeepAliveConnection:Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;

    return-void
.end method

.method public setPredictionMetrics(Ljava/lang/String;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mPredictedUrl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->mLastMayLaunchUrlTimestamp:J

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->highConfidencePrediction:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->highConfidencePrediction:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->lowConfidencePrediction:Z

    or-int/2addr p1, p4

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;->lowConfidencePrediction:Z

    return-void
.end method
