.class public Lorg/chromium/components/download/DownloadCollectionBridge$DisplayNameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/download/DownloadCollectionBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameInfo"
.end annotation


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/download/DownloadCollectionBridge$DisplayNameInfo;->mUri:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/download/DownloadCollectionBridge$DisplayNameInfo;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method private getDisplayName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/download/DownloadCollectionBridge$DisplayNameInfo;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method private getDownloadUri()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/download/DownloadCollectionBridge$DisplayNameInfo;->mUri:Ljava/lang/String;

    return-object p0
.end method
