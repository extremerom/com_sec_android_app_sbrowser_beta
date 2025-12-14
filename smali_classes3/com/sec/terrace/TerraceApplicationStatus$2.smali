.class Lcom/sec/terrace/TerraceApplicationStatus$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceApplicationStatus$2;->val$listener:Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceApplicationStatus$2;->val$listener:Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;->onActivityStateChange(Landroid/app/Activity;I)V

    return-void
.end method
