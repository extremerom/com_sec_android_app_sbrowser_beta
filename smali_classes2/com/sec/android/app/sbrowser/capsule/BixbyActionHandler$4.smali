.class Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->nativeInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$4;->this$0:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$4;->val$callback:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$4;->val$callback:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;->onInitialized()V

    return-void
.end method
