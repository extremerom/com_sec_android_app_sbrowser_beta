.class Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$ServerProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerProfile"
.end annotation


# static fields
.field private static final sEndpointAddresses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$ServerProfile;->sEndpointAddresses:Ljava/util/HashMap;

    const-string v1, "dev"

    const-string v2, "https://sia-dev.internet.apps.samsung.com/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stg"

    const-string v2, "https://sia-stg.internet.apps.samsung.com/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prd"

    const-string v2, "https://sia.internet.apps.samsung.com/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$ServerProfile;->getServerEndpointAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getServerEndpointAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogMessage$ServerProfile;->sEndpointAddresses:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
