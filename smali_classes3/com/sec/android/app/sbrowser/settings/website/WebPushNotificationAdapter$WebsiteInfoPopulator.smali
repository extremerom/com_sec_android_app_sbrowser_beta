.class Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteInfoPopulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V

    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->d(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->sortWebsiteList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->mWebsiteList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setAllowedBlockedList(Ljava/util/List;)V

    return-void
.end method
