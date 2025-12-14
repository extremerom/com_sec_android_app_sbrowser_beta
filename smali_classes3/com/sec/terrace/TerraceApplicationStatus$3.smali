.class Lcom/sec/terrace/TerraceApplicationStatus$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceApplicationStatus$3;->val$listener:Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceApplicationStatus$3;->val$listener:Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;->onApplicationStateChange(I)V

    return-void
.end method
