.class public Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestMetadata"
.end annotation


# instance fields
.field private final mHasUserGesture:Z

.field private final mIsRendererIntiated:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->mHasUserGesture:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->mIsRendererIntiated:Z

    return-void
.end method


# virtual methods
.method public hasUserGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->mHasUserGesture:Z

    return p0
.end method

.method public isRendererInitiated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->mIsRendererIntiated:Z

    return p0
.end method
