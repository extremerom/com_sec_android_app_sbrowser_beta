.class public final Lcom/sec/terrace/browser/TerracePasswordUIView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;,
        Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;,
        Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;
    }
.end annotation


# instance fields
.field private mNativePasswordUIViewAndroid:J

.field private mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->init(Lcom/sec/terrace/browser/TerracePasswordUIView;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    return-void
.end method

.method private static createSavedPasswordEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v9, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v9
.end method

.method private passwordExceptionListAvailable(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;->passwordExceptionListAvailable(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private passwordListAvailable(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;->passwordListAvailable(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->destroy(JLcom/sec/terrace/browser/TerracePasswordUIView;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->clear()V

    return-void
.end method

.method public getSavedPasswordEntry(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->getSavedPasswordEntry(JLcom/sec/terrace/browser/TerracePasswordUIView;I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object p0

    return-object p0
.end method

.method public getSavedPasswordException(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
    .locals 4

    new-instance v0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->getSavedPasswordException(JLcom/sec/terrace/browser/TerracePasswordUIView;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public removePasswordExceptionForTest()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->removePasswordExceptionForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V

    return-void
.end method

.method public removeSavedPasswordEntry(I)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->handleRemoveSavedPasswordEntry(JLcom/sec/terrace/browser/TerracePasswordUIView;I)V

    return-void
.end method

.method public removeSavedPasswordException(I)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->handleRemoveSavedPasswordException(JLcom/sec/terrace/browser/TerracePasswordUIView;I)V

    return-void
.end method

.method public removeSavedPasswordForTest()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->removeSavedPasswordForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V

    return-void
.end method

.method public setPasswordExceptionListForTest()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->setPasswordExceptionListForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V

    return-void
.end method

.method public setPasswordListForTest()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->setPasswordListForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V

    return-void
.end method

.method public updatePasswordLists()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;->get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/TerracePasswordUIView;->mNativePasswordUIViewAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;->updatePasswordLists(JLcom/sec/terrace/browser/TerracePasswordUIView;)V

    return-void
.end method
