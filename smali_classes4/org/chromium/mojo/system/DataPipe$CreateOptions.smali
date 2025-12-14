.class public Lorg/chromium/mojo/system/DataPipe$CreateOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/DataPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateOptions"
.end annotation


# instance fields
.field private mCapacityNumBytes:I

.field private mElementNumBytes:I

.field private mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-void
.end method


# virtual methods
.method public getCapacityNumBytes()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mCapacityNumBytes:I

    return p0
.end method

.method public getElementNumBytes()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mElementNumBytes:I

    return p0
.end method

.method public getFlags()Lorg/chromium/mojo/system/DataPipe$CreateFlags;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mFlags:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-object p0
.end method

.method public setCapacityNumBytes(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mCapacityNumBytes:I

    return-void
.end method

.method public setElementNumBytes(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->mElementNumBytes:I

    return-void
.end method
