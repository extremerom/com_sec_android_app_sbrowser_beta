.class public Lcom/sec/terrace/browser/extensions/AcceleratorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;
    }
.end annotation


# instance fields
.field private mNativeAcceleratorManager:J

.field private mNativeImeAdapterAndroid:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/AcceleratorManagerJni;->get()Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;->init(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeAcceleratorManager:J

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeImeAdapterAndroid:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeAcceleratorManager:J

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeImeAdapterAndroid:J

    :goto_0
    return-void
.end method

.method private static getModifiers(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x200

    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    or-int/lit16 v0, v0, 0x400

    :cond_4
    return v0
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 15

    move-object v3, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :goto_1
    iget-wide v0, v3, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeAcceleratorManager:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/AcceleratorManagerJni;->get()Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;

    move-result-object v0

    iget-wide v1, v3, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeAcceleratorManager:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->getModifiers(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v12

    iget-wide v13, v3, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->mNativeImeAdapterAndroid:J

    const/4 v11, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    invoke-interface/range {v0 .. v14}, Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;->onKeyEvent(JLcom/sec/terrace/browser/extensions/AcceleratorManager;Landroid/view/KeyEvent;IIJIIZIJ)J

    :cond_1
    return-void
.end method
