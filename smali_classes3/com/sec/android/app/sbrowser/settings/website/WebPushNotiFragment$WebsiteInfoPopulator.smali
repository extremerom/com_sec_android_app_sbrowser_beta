.class Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteInfoPopulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->y(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Ljava/util/List;)V

    return-void
.end method
