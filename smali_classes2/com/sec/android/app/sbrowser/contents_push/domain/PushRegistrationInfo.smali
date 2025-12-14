.class public Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo$From;
    }
.end annotation


# instance fields
.field private mFrom:Ljava/lang/String;

.field private mPushId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "period"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->mFrom:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->mPushId:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->mPushId:Ljava/lang/String;

    return-void
.end method
