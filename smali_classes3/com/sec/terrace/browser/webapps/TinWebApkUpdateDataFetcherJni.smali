.class Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcherJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;


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

.method public static get()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcherJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcherJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MnpvNgql(JLjava/lang/Object;)V

    return-void
.end method

.method public initialize(Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MSF9cFeZ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public start(JLcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->McrbHmCB(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
