.class Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafeBrowsingApiLookupDoneObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeBrowsingApiLookupDoneObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$SafeBrowsingApiLookupDoneObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlCheckDone(JII[IIJ)V
    .locals 11

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->b()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->b()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;

    move-result-object v0

    move-wide/from16 v9, p7

    invoke-interface {v0, v9, v10}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$UrlCheckTimeObserver;->onUrlCheckTime(J)V

    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p7

    :goto_0
    invoke-static {}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridgeJni;->get()Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;

    move-result-object v2

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge$Natives;->onUrlCheckDoneBySafeBrowsingApi(JII[IIJ)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
