.class Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Dev;
.super Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dev"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$ContentsPushServerProfile$Dev;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndpointAddress()Ljava/lang/String;
    .locals 0

    const-string p0, "https://contents-push-api-dev.internet.apps.samsung.com/"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "dev"

    return-object p0
.end method
