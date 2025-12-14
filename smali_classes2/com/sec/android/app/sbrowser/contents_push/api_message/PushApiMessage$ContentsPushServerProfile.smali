.class abstract Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ContentsPushServerProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Dev;,
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Stage;,
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$PreProduct;,
        Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Product;
    }
.end annotation


# static fields
.field private static final sDefaultProfile:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;

.field private static final sProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->sProfiles:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Dev;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Dev;-><init>(I)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->addProfile(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Stage;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Stage;-><init>(I)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->addProfile(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$PreProduct;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$PreProduct;-><init>(I)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->addProfile(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Product;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Product;-><init>(I)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->addProfile(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;)V

    const-string v1, "prd"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->sDefaultProfile:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->getServerEndpointAdress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addProfile(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->sProfiles:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getServerEndpointAdress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->sProfiles:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->sDefaultProfile:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;->getEndpointAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getEndpointAddress()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
