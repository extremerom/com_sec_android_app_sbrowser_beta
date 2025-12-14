.class public Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;


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

.method public static get()Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MsIy1R4W(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public destroy(JLcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M3l0$YcO(JLjava/lang/Object;)V

    return-void
.end method
