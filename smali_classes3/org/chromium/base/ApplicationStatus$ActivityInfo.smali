.class Lorg/chromium/base/ApplicationStatus$ActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfo"
.end annotation


# instance fields
.field private mListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I

.field private mTaskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mListeners:Lorg/chromium/base/ObserverList;

    iput p1, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mTaskId:I

    return-void
.end method


# virtual methods
.method public getListeners()Lorg/chromium/base/ObserverList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mListeners:Lorg/chromium/base/ObserverList;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    return p0
.end method

.method public getTaskId()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mTaskId:I

    return p0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/base/ApplicationStatus$ActivityInfo;->mStatus:I

    return-void
.end method
