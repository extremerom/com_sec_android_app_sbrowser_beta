.class Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public closeBannerIfNeeded(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MK8WHg28(JLjava/lang/Object;)V

    return-void
.end method

.method public create(Lcom/sec/terrace/TerraceAppBannerDataFetcher;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MZTVRDOK(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public fetchManifest(JLcom/sec/terrace/TerraceAppBannerDataFetcher;IJI)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->Mq$uXAkx(JLjava/lang/Object;IJI)V

    return-void
.end method

.method public onInstall(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Ma8e5VWU(JLjava/lang/Object;)V

    return-void
.end method

.method public onJavaTinAppBannerDataFetcherDestroyed(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Myq4td2B(JLjava/lang/Object;)V

    return-void
.end method

.method public sendBannerEvent(JLcom/sec/terrace/TerraceAppBannerDataFetcher;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MlHYOXeO(JLjava/lang/Object;I)V

    return-void
.end method
