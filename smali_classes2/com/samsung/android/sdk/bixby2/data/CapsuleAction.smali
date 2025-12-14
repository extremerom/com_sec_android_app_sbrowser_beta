.class public Lcom/samsung/android/sdk/bixby2/data/CapsuleAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field actionHandler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

.field isExported:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/bixby2/action/ActionHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/data/CapsuleAction;->actionHandler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/bixby2/data/CapsuleAction;->isExported:Z

    return-void
.end method


# virtual methods
.method public getActionHandler()Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/data/CapsuleAction;->actionHandler:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    return-object p0
.end method

.method public isExported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/bixby2/data/CapsuleAction;->isExported:Z

    return p0
.end method
