.class public Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteInfoPopulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->r(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->R(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->S(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
