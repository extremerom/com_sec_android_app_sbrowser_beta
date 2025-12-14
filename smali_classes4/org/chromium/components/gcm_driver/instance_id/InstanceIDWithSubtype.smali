.class public Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype$FakeFactory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field protected static sFakeFactoryForTesting:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype$FakeFactory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final sSubtypeInstances:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sSubtypeInstancesLock:Ljava/lang/Object;


# instance fields
.field private final mInstanceID:Lu5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sSubtypeInstances:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sSubtypeInstancesLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sSubtypeInstancesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sSubtypeInstances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    if-nez v2, :cond_1

    sget-object v2, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sFakeFactoryForTesting:Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype$FakeFactory;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype$FakeFactory;->create(Ljava/lang/String;)Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "subtype"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lu5/a;->b(Landroid/content/Context;Landroid/os/Bundle;)Lu5/a;

    move-result-object v2

    new-instance v3, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;

    invoke-direct {v3, v2}, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;-><init>(Lu5/a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "subtype must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deleteInstanceID()V
    .locals 3

    sget-object v0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sSubtypeInstancesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->sSubtypeInstances:Ljava/util/Map;

    iget-object v2, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    iget-object v2, v2, Lu5/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    invoke-virtual {p0}, Lu5/a;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    invoke-virtual {p0, p1, p2}, Lu5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCreationTime()J
    .locals 2

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    sget-object v0, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object p0, p0, Lu5/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/q;->q(Ljava/lang/String;)Lu5/g;

    move-result-object p0

    iget-wide v0, p0, Lu5/g;->b:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    sget-object v0, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object p0, p0, Lu5/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/q;->q(Ljava/lang/String;)Lu5/g;

    move-result-object p0

    iget-object p0, p0, Lu5/g;->a:Ljava/security/KeyPair;

    invoke-static {p0}, Lu5/a;->c(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/instance_id/InstanceIDWithSubtype;->mInstanceID:Lu5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_b

    sget-object v0, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    const-string v1, "appVersion"

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v0

    if-eqz v1, :cond_3

    sget-object v0, Lu5/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object v1, p0, Lu5/a;->b:Ljava/lang/String;

    monitor-enter v0

    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/google/firebase/messaging/q;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-wide/16 v4, -0x1

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    sget-wide v0, Lu5/a;->e:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object v0, p0, Lu5/a;->b:Ljava/lang/String;

    monitor-enter v1

    :try_start_2
    invoke-static {v0, p1, p2}, Lcom/google/firebase/messaging/q;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_3
    :goto_0
    if-nez v3, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_4

    const-string v1, "scope"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    iget-object v2, p0, Lu5/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v2, p1

    :cond_5
    const-string v1, "legacy.register"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subtype"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-subscription"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-subtype"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lu5/a;->g:Lu5/e;

    sget-object v2, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object v3, p0, Lu5/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/messaging/q;->q(Ljava/lang/String;)Lu5/g;

    move-result-object v2

    iget-object v2, v2, Lu5/g;->a:Ljava/security/KeyPair;

    invoke-virtual {v1, v0, v2}, Lu5/e;->a(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lu5/e;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "RST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "RST|"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lu5/a;->c:LR7/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object v1, p0, Lu5/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/q;->q(Ljava/lang/String;)Lu5/g;

    move-result-object v0

    iget-object v0, v0, Lu5/g;->a:Ljava/security/KeyPair;

    invoke-static {v0}, Lu5/a;->c(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lu5/a;->a:Landroid/content/Context;

    sget-object p1, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    invoke-static {p0, p1}, LH/B;->a(Landroid/content/Context;Lcom/google/firebase/messaging/q;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    sget-object v0, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    iget-object p0, p0, Lu5/a;->b:Ljava/lang/String;

    sget-object v1, Lu5/a;->h:Ljava/lang/String;

    monitor-enter v0

    :try_start_5
    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/q;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/q;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1, p0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p0, "appVersion"

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_9
    iget-object p0, p0, Lu5/a;->a:Landroid/content/Context;

    sget-object p1, Lu5/a;->f:Lcom/google/firebase/messaging/q;

    invoke-static {p0, p1}, LH/B;->a(Landroid/content/Context;Lcom/google/firebase/messaging/q;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    return-object v3

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "MAIN_THREAD"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
