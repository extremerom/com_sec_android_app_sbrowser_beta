.class public Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;
    }
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sIntentWithGesturesHandler:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

.field private static sSeedBytes:[B


# instance fields
.field private mIntentToken:[B

.field private mRequestMetadata:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

.field private final mSecureRandom:Ljava/security/SecureRandom;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->INSTANCE_LOCK:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->sSeedBytes:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->sIntentWithGesturesHandler:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->sIntentWithGesturesHandler:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->sIntentWithGesturesHandler:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mIntentToken:[B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mRequestMetadata:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    return-void
.end method

.method public getRequestMetadataAndClear(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mIntentToken:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mUri:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "org.chromium.chrome.browser.user_gesture_token"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetByteArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mIntentToken:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mRequestMetadata:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->clear()V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onNewIntentWithRequestMetadata(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;)V
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mIntentToken:[B

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, "org.chromium.chrome.browser.user_gesture_token"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mIntentToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mRequestMetadata:Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->mUri:Ljava/lang/String;

    return-void
.end method
