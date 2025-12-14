.class public Lorg/chromium/components/gcm_driver/GCMMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/gcm_driver/GCMMessage$BundleReader;,
        Lorg/chromium/components/gcm_driver/GCMMessage$Reader;,
        Lorg/chromium/components/gcm_driver/GCMMessage$PersistableBundleReader;,
        Lorg/chromium/components/gcm_driver/GCMMessage$JSONReader;,
        Lorg/chromium/components/gcm_driver/GCMMessage$Priority;,
        Lorg/chromium/components/gcm_driver/GCMMessage$BundleWriter;,
        Lorg/chromium/components/gcm_driver/GCMMessage$Writer;,
        Lorg/chromium/components/gcm_driver/GCMMessage$PersistableBundleWriter;,
        Lorg/chromium/components/gcm_driver/GCMMessage$JSONWriter;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final VERSION:Ljava/lang/String; = "v1"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mCollapseKey:Ljava/lang/String;

.field private final mDataKeysAndValuesArray:[Ljava/lang/String;

.field private final mMessageId:Ljava/lang/String;

.field private final mOriginalPriority:Ljava/lang/String;

.field private final mRawData:[B

.field private final mSenderId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lorg/chromium/components/gcm_driver/GCMMessage$Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/chromium/components/gcm_driver/GCMMessage$Reader<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "senderId"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mSenderId:Ljava/lang/String;

    const-string v0, "appId"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mAppId:Ljava/lang/String;

    const-string v0, "collapseKey"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mCollapseKey:Ljava/lang/String;

    const-string v0, "originalPriority"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mOriginalPriority:Ljava/lang/String;

    const-string v0, "messageId"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mMessageId:Ljava/lang/String;

    const-string v0, "rawData"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mRawData:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mRawData:[B

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mRawData:[B

    :goto_0
    const-string v0, "data"

    invoke-interface {p2, p1, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readStringArray(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mDataKeysAndValuesArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "subtype"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mSenderId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mAppId:Ljava/lang/String;

    const-string p1, "collapse_key"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mCollapseKey:Ljava/lang/String;

    const-string v1, "rawData"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mRawData:[B

    const-string v2, "google.original_priority"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mOriginalPriority:Ljava/lang/String;

    const-string v3, "google.message_id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mMessageId:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "from"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.google.ipc.invalidation.gcmmplex."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mDataKeysAndValuesArray:[Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Received push message with no subtype"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static create(Ljava/lang/Object;Lorg/chromium/components/gcm_driver/GCMMessage$Reader;)Lorg/chromium/components/gcm_driver/GCMMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/chromium/components/gcm_driver/GCMMessage$Reader<",
            "TT;>;)",
            "Lorg/chromium/components/gcm_driver/GCMMessage;"
        }
    .end annotation

    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    invoke-static {p0, p1}, Lorg/chromium/components/gcm_driver/GCMMessage;->validate(Ljava/lang/Object;Lorg/chromium/components/gcm_driver/GCMMessage$Reader;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "appId"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "senderId"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/chromium/components/gcm_driver/GCMMessage;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/gcm_driver/GCMMessage;-><init>(Ljava/lang/Object;Lorg/chromium/components/gcm_driver/GCMMessage$Reader;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lorg/chromium/components/gcm_driver/GCMMessage;
    .locals 2

    new-instance v0, Lorg/chromium/components/gcm_driver/GCMMessage$JSONReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/components/gcm_driver/GCMMessage$JSONReader;-><init>(I)V

    invoke-static {p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage;->create(Ljava/lang/Object;Lorg/chromium/components/gcm_driver/GCMMessage$Reader;)Lorg/chromium/components/gcm_driver/GCMMessage;

    move-result-object p0

    return-object p0
.end method

.method public static peekSenderId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "senderId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static validate(Ljava/lang/Object;Lorg/chromium/components/gcm_driver/GCMMessage$Reader;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/chromium/components/gcm_driver/GCMMessage$Reader<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "appId"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "collapseKey"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rawData"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "senderId"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "originalPriority"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "messageId"

    invoke-interface {p1, p0, v0}, Lorg/chromium/components/gcm_driver/GCMMessage$Reader;->hasKey(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getCollapseKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mCollapseKey:Ljava/lang/String;

    return-object p0
.end method

.method public getDataKeysAndValuesArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mDataKeysAndValuesArray:[Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mMessageId:Ljava/lang/String;

    return-object p0
.end method

.method public getRawData()[B
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mRawData:[B

    return-object p0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMMessage;->mSenderId:Ljava/lang/String;

    return-object p0
.end method
