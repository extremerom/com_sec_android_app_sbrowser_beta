.class public Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$Natives;,
        Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sBlockOnAsyncTasksForTesting:Z


# instance fields
.field private mInstanceID:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

.field private mNativeInstanceIDAndroid:J

.field private final mSubtype:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mSubtype:Ljava/lang/String;

    iput-wide p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mNativeInstanceIDAndroid:J

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mInstanceID:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mNativeInstanceIDAndroid:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mSubtype:Ljava/lang/String;

    return-object p0
.end method

.method public static create(JLjava/lang/String;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mInstanceID:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    return-void
.end method

.method private deleteInstanceID(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$5;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$5;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    invoke-virtual {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->execute()V

    return-void
.end method

.method private deleteToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$4;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->execute()V

    return-void
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->mNativeInstanceIDAndroid:J

    return-void
.end method

.method public static bridge synthetic e()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->sBlockOnAsyncTasksForTesting:Z

    return v0
.end method

.method private getToken(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$3;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v6}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->execute()V

    return-void
.end method

.method private static setBlockOnAsyncTasksForTesting(Z)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->sBlockOnAsyncTasksForTesting:Z

    sput-boolean p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;->sBlockOnAsyncTasksForTesting:Z

    return v0
.end method


# virtual methods
.method public getCreationTime(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$2;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    invoke-virtual {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->execute()V

    return-void
.end method

.method public getId(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$1;-><init>(Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge;I)V

    invoke-virtual {v0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDBridge$BridgeAsyncTask;->execute()V

    return-void
.end method
